import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:window_manager/window_manager.dart';
import 'package:provider/provider.dart';
import 'dart:math';
import '../controller/exp_controller.dart';
import 'exp_scheme.dart';

class ExpPage extends StatefulWidget {
  const ExpPage({
    Key? key,
  }) : super(key: key);

  final String title =
      'Исследование цепей постоянного тока с последовательным соединением резисторов';

  @override
  State<ExpPage> createState() => _ExpPageState();
}

class _ExpPageState extends State<ExpPage>
    with WindowListener, AutomaticKeepAliveClientMixin {

  @override
  bool wantKeepAlive = true;

  @override
  void initState() {
    windowManager.addListener(this);
    super.initState();
  }

  @override
  void dispose() {
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    Size screenSize = MediaQuery.of(context).size;
    bool hideAppBar = screenSize.shortestSide < 550;

    if (hideAppBar) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: [SystemUiOverlay.bottom]);
    }

    return ChangeNotifierProvider(
        create: (context) => ExpController(),
        child: Scaffold(
          backgroundColor: const Color(0xffeae2d2),
          appBar: !hideAppBar
              ? AppBar(
                  title: Text(widget.title,
                      textScaleFactor:
                          0.7 * sqrt(screenSize.width) / sqrt(1000), //0.9,
                      softWrap: true,
                      maxLines: 3,
                      textAlign: TextAlign.center),
                )
              : null,
          body: SafeArea(
            child: Stack(children: [
              InteractiveViewer(
                child:
                Consumer<ExpController>(
                  builder: (context, controller, child) {
                    return Scheme(
                      calculateParams: controller.calculateParams,
                      calculateResult: controller.calculateResult,
                      onToggleQ1: controller.toggleQ1,
                      onToggleMain: controller.toggleMain,
                      onSetR1: controller.setR1,
                      onSetR2: controller.setR2,
                      onSetR3: controller.setR3,
                      onSetU: controller.setU,
                    );
                  },
                ),
              ),
            ]),
          ),
        ));
  }
}