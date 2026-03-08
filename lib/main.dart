import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'features/login/login_page.dart';
import 'common/doc_screen.dart';
import 'features/exp/view/exp_page.dart';

void main() async {

  if (kIsWeb) {
    // running on the web!
    runApp(App()); //под веб
  } else {
    if (Platform.isWindows) {
      WidgetsFlutterBinding.ensureInitialized();
      // Must add this line.
      await windowManager.ensureInitialized();

      // Use it only after calling `hiddenWindowAtLaunch`
      windowManager.waitUntilReadyToShow().then((_) async {
        // Hide window title bar
        // await windowManager.setTitleBarStyle('hidden');
        await windowManager.setSize(Size(1300, 800));
        await windowManager.center();
        await windowManager.show();
        await windowManager.setSkipTaskbar(false);
      });

      windowManager.setTitle("Виртуальный тренажер");
    }

    runApp(App()); //не под веб
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => LoginPage(),

        // Эксперимент
        '/exp': (BuildContext context) => const ExpPage(),
        '/exp/docs': (BuildContext context) => const DocScreen(),

      },
      title: 'Виртуальный тренажер',

      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
    );
  }
}

