import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:postgres/postgres.dart';
import 'package:unique_device_identifier/unique_device_identifier.dart';

import '../../common/style.dart';

String databaseHostName = "127.0.0.1";
int databasePort = 5432;
const String databaseName = "virtual_labs";
const String databaseUserName = "postgres";
const String databasePassword = "admin";

class LoginPage extends StatelessWidget {
  const LoginPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // для мобильных устройств разрешаем только горизонтальный режим
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    Size screenSize = MediaQuery.of(context).size;
    bool useVerticalLayout = screenSize.width < screenSize.height;
    bool hideDetailPanel = screenSize.shortestSide < 550;

    return Scaffold(
      backgroundColor: backColor,
      body: Flex(
          direction: useVerticalLayout ? Axis.vertical : Axis.horizontal,
          children: [
            if (hideDetailPanel == false) ...[
              Flexible(child: _LoginDetailPanel()),
            ],
            const Flexible(child: _LoginForm()),
          ]),
    );
  }
}

class _LoginDetailPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        color: Colors.grey.shade300,
        child: const Text(
          "Виртуальный тренажер",
          style: TextStyle(fontSize: 60),
          textAlign: TextAlign.center,
        ),
      );
}

class _LoginForm extends StatefulWidget {
  const _LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormState createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<_LoginForm> {

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String productKey='';
  String comment='';

  final _formKey = GlobalKey<FormState>();

  TextEditingController productKeyController = TextEditingController();

  Future<void> readProductKey() async {
   SharedPreferences prefs = await _prefs;
    setState (() {
      productKey = (prefs.getString('productKey') ?? "");
    });
   print("productKey=$productKey");
  }

  Future<void> writeProductKey(String _productKey) async {
    SharedPreferences prefs = await _prefs;
    prefs.setString('productKey', _productKey);
  }

  Future<void> eraseProductKey() async {
    SharedPreferences prefs = await _prefs;
    await prefs.remove('productKey');
  }

  // кнопка "начать работу"
  handleLoginPressed() async {

    // вычисляем deviceID
    String? deviceID;
    try {
      deviceID = await UniqueDeviceIdentifier.getUniqueIdentifier();
    } on PlatformException {
      deviceID = 'Failed to get deviceId.';
    }
    print("deviceId->$deviceID");

    if (productKey == "") {
      if (_formKey.currentState!.validate()) {
        productKey = productKeyController.text;

        var connection = PostgreSQLConnection(
            databaseHostName, databasePort, databaseName,
            username: databaseUserName, password: databasePassword);

        SocketException err = const SocketException("");
        await connection.open().catchError((e) {
          print(e);
          setState(() {
            comment =
            "Нет связи с базой данных. Возможно, отсутствует интернет-соединение.";
          });
          err = e;
        });
        if (err.message != "") {
          return;
        }

        List<List<dynamic>> results = await connection.query(
            "SELECT key, device_id FROM keys WHERE key = @productKey",
        substitutionValues: {'productKey': productKey});
        print('productKey: $productKey');

        if (results.isEmpty) {
          setState(() {
            comment = "Ключ продукта не верен.";
          });
          await connection.close();
          return;
        }

        // если в базе нет deviceId
        if ((results[0][1] == null) ||
            (results[0][1] == "")) {
          await connection.query(
              "UPDATE keys SET device_id = @deviceID WHERE key = @productKey",
          substitutionValues: {'deviceID': deviceID,'productKey': productKey});
        }

        //если в базе есть deviceID
        else
            {
          if (results[0][1] != deviceID) {
            setState(() {
              comment = "Этот ключ привязан к другому устройству.";
            });
            await connection.close();
            return;
          }
        }

        await connection.close();

        // сохраняем локально
        writeProductKey(productKey);

        Navigator.pushNamed(context, '/exp');
      }
    }
    else // уже есть записанный локально productKey
        {

      var connection = PostgreSQLConnection(
          databaseHostName, databasePort, databaseName,
          username: databaseUserName, password: databasePassword);

      SocketException err = const SocketException("");

      await connection.open().catchError((e) {
        print(e);
        setState(() {
          comment =
          "Нет связи с базой данных. Возможно, отсутствует интернет-соединение.";
        });
        err = e;
      });

      if (err.message != "") {
        return;
      }

      List<List<dynamic>> results = await connection.query(
          "SELECT key, device_id FROM keys WHERE key = @productKey",
          substitutionValues: {'productKey': productKey});

      if (results.isEmpty) {
        setState(() {
          comment = "Ключ продукта не верен.";
        });
        await connection.close();
        return;
      }

      if (results[0][1] != deviceID) {
        setState(() {
          comment = "Этот ключ привязан к другому устройству.";
        });
        await connection.close();
        return;
      }

      await connection.close();

      print("productKey->$productKey");

      Navigator.pushNamed(context, '/exp');
    }
  }

  // кнопка "отвязать ключ продукта от этого устройства"
  anotherKeyPressed() async {
    var connection = PostgreSQLConnection(databaseHostName, databasePort, databaseName, username: databaseUserName, password: databasePassword);
    SocketException err = const SocketException("");

    await connection.open().catchError((e) {
      print(e);
      setState(() {
        comment="Нет связи с базой данных. Возможно, отсутствует интернет-соединение.";
      });
      err=e;
    });

    if (err.message!="") {return;}

    await connection.query("UPDATE keys SET device_id = NULL WHERE key = @productKey",
        substitutionValues: {'productKey': productKey});

    await connection.close();

    await eraseProductKey();

    setState(()  {
      productKey="";
      comment="";
    });
  }

  String? validator(value)
  {
    if (value == null || value.isEmpty) {
      return 'Нужно указать ключ продукта';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    readProductKey();
  }

  @override
  Widget build(BuildContext context) {

    return
      Form(
      key: _formKey,
      child: Center(
        // Use a maxWidth so the form is responsive, but does get not too large on bigger screens
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450),
          // Very small screens may require vertical scrolling of the form
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(comment),
                  if (productKey=="") TextFormField(
                    controller: productKeyController,
                      validator: validator,
                      decoration: _getTextDecoration("Введите ключ продукта"),
                    
                  ),
                  const SizedBox(height: 16),

                  OutlinedButton(
                      onPressed: handleLoginPressed,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(16.0),
                        child: const Text("Начать работу"),
                      )),
                  const SizedBox(height: 16),

                  const SizedBox(height: 50),
                  if (productKey!="") TextButton(
                      onPressed: anotherKeyPressed,
                      child: const Text('Отвязать ключ продукта от этого устройства')
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

InputDecoration _getTextDecoration(String hint) =>
    InputDecoration(border: OutlineInputBorder(), hintText: hint);
