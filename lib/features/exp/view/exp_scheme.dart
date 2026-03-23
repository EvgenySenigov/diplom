import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../common/components.dart';
import '../../../common/style.dart';
import '../model/calculate_params.dart';
import '../model/calculate_result.dart';

class Scheme extends StatelessWidget {
  final CalculateParams calculateParams;
  final CalculateResult calculateResult;
  final VoidCallback onToggleQ1;
  final VoidCallback onToggleMain;
  final ValueChanged<double> onSetR1;
  final ValueChanged<double> onSetR2;
  final ValueChanged<double> onSetR3;
  final ValueChanged<double> onSetU;

  const Scheme({Key? key,
    required this.calculateParams,
    required this.calculateResult,
    required this.onToggleQ1,
    required this.onToggleMain,
    required this.onSetR1,
    required this.onSetR2,
    required this.onSetR3,
    required this.onSetU,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size screenSize = MediaQuery.of(context).size;
    bool hideAppBar = screenSize.shortestSide < 550;

    EdgeInsetsGeometry? margin;
    !hideAppBar
        ? margin = const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5)
        : margin = const EdgeInsets.only(top: 0, bottom: 0, left: 0, right: 0);

    return Container(
      decoration: BoxDecoration(
        color: schemeBackColor, // Color(0xfff1eada),
        boxShadow: const [
          BoxShadow(
            color: Color(0x55000000),
            offset: Offset(0, 1),
            blurRadius: 0.5,
          ),
          BoxShadow(
            color: Color(0x50000000),
            offset: Offset(0, 1),
            blurRadius: 2,
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      margin: margin,
      child: Center(
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            width: 1600 * 2,
            height: 900 * 2,
            alignment: Alignment.center,
            child: Stack(children: [

              // выключатель Q1
              Positioned(
                  top: 495-50.5,
                  left: 520,
                  height: 100,
                  width: 135,
                  child: ElevatedButton(
                    style: (calculateParams.Q1on)
                        ? onQBtnStyle
                        : offQBtnStyle,
                    onPressed: onToggleQ1,
                   child: (calculateParams.Q1on)
                       ? Container(
                     padding: const EdgeInsets.only(top: 0.5, right: 2),
                     child: FractionallySizedBox(
                       heightFactor: 0.525,
                       widthFactor: 0.525,
                       child: SvgPicture.asset(
                         'assets/exp/Q1on.svg',
                         semanticsLabel: 'off',
                         alignment: Alignment.center,
                       ),
                     ),
                   )
                       : Container(
                     padding: const EdgeInsets.only(bottom: 26),
                     child: FractionallySizedBox(
                       heightFactor: 0.525,
                       widthFactor: 0.525,
                       child: SvgPicture.asset(
                         'assets/exp/Q1off.svg',
                         semanticsLabel: 'off',
                         alignment: Alignment.center,
                       ),
                     ),
                   ),
                  )),

            // картинка
            IgnorePointer(
                ignoring: true,
              child: Container(
                padding: const EdgeInsets.only(
                    top: 200, left: 20, right: 20, bottom: 0),
                child: SvgPicture.asset(
                  'assets/exp/scheme.svg',
                  semanticsLabel: 'scheme',
                  alignment: Alignment.topCenter,
                ),
              ),
            ),

            // Индикатор U
              Indicator(top: 827, left: 325, height: 200, width: 300, value: calculateResult.U,  units: "В"),
            // Индикатор U1
              Indicator(top: 100, left: 1120, height: 200, width: 300, value: calculateResult.U1,  units: "В"),
            // Индикатор U2
              Indicator(top: 100, left: 1940, height: 200, width: 300, value: calculateResult.U2,  units: "В"),
            // Индикатор U3
              Indicator(top: 100, left: 2765, height: 200, width: 300, value: calculateResult.U3,  units: "В"),
              // Индикатор I1
              Indicator(top: 395, left: 710, height: 200, width: 300, value: calculateResult.I,  units: "А"),
            // Индикатор I2
              Indicator(top: 395, left: 1535, height: 200, width: 300, value: calculateResult.I,  units: "А"),
            // Индикатор I3
              Indicator(top: 395, left: 2355, height: 200, width: 300, value: calculateResult.I,  units: "А"),

              // Задатчик сопротивления R1
              Setter(top: 620, left: 1130, width: 280, onChanged: onSetR1, value: calculateParams.R1, subLabel: "1"),
            // Задатчик сопротивления R2
              Setter(top: 620, left: 1950, width: 280, onChanged: onSetR2, value: calculateParams.R2, subLabel: "2"),
            // Задатчик сопротивления R3
              Setter(top: 620, left: 2775, width: 280, onChanged: onSetR3, value: calculateParams.R3, subLabel: "3"),
            // Задатчик  U
              Setter(top: 50, left: 130, width: 280,
                  onChanged: onSetU, value: calculateParams.U, label: "U", subLabel: "", units: "В", min: 0, max: 100),

            // надписи
              const Label(top: 400, left: 1400, width: 300, subLabel: "1"),
              const Label(top: 400, left: 1400+815, width: 300, subLabel: "2"),
              const Label(top: 400, left: 1400+815+815, width: 300, subLabel: "3"),

              const Label(top: 220, left: 840, width: 300, label: "I", subLabel: "1"),
              const Label(top: 220, left: 1655, width: 300, label: "I", subLabel: "2"),
              const Label(top: 220, left: 2470, width: 300, label: "I", subLabel: "3"),

              const Label(top: 350, left: 1240, width: 300, label: "U", subLabel: "1"),
              const Label(top: 350, left: 1240+815, width: 300, label: "U", subLabel: "2"),
              const Label(top: 350, left: 1240+815+815, width: 300, label: "U", subLabel: "3"),
              const Label(top: 1100, left: 200, width: 300, label: "U", subLabel: "4"),

              const Label(top: 893, left: 136, width: 300, label: "И"),

              const Label(top: 330, left: 750, width: 300, label: "PA1"),
              const Label(top: 330, left: 1565, width: 300, label: "PA2"),
              const Label(top: 330, left: 2380, width: 300, label: "PA3"),

              const Label(top: 35, left: 1150, width: 300, label: "PV1"),
              const Label(top: 35, left: 1150+815, width: 300, label: "PV2"),
              const Label(top: 35, left: 1150+815+815, width: 300, label: "PV3"),
              const Label(top: 760, left: 360, width: 300, label: "PV4"),

              const Label(top: 370, left: 550, width: 300, label: "Q1"),

              const Label(top: 1100, left: 980, width: 300, label: "φ", subLabel: "0"),
              const Label(top: 1100, left: 980+815, width: 300, label: "φ", subLabel: "1"),
              const Label(top: 1100, left: 980+815+815, width: 300, label: "φ", subLabel: "2"),
              const Label(top: 1100, left: 980+815+815+420, width: 300, label: "φ", subLabel: "3"),

              const Label(top: 790, left: 85, width: 300, label: "+",labelFontSize: 60),
              const Label(top: 970, left: 85, width: 300, label: "‒",labelFontSize: 60),

              const Label(top: 420, left: 665, width: 300, label: "+",labelFontSize: 60),
              const Label(top: 420, left: 670+815, width: 300, label: "+",labelFontSize: 60),
              const Label(top: 420, left: 670+815+815, width: 300, label: "+",labelFontSize: 60),

              const Label(top: 120, left: 1060, width: 300, label: "+",labelFontSize: 60),
              const Label(top: 120, left: 1060+815, width: 300, label: "+",labelFontSize: 60),
              const Label(top: 120, left: 1060+815+815, width: 300, label: "+",labelFontSize: 60),
              const Label(top: 750, left: 510, width: 300, label: "+",labelFontSize: 60),

            Positioned(
              top: 520,
              left: 1080, //202,
              height: 80,
              width: 80,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                alignment: Alignment.center,
                child: Text("0",
                    style:  TextStyle(
                      color: labelColor, fontSize: 52, fontWeight: FontWeight.w600,),
                  ),
                ),
              ),

              Positioned(
                top: 520,
                left: 1080+820,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text("1",
                    style:  TextStyle(
                      color: labelColor, fontSize: 52, fontWeight: FontWeight.w600,),
                  ),
                ),
              ),

              Positioned(
                top: 520,
                left: 1080+815+825,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text("2",
                    style:  TextStyle(
                      color: labelColor, fontSize: 52, fontWeight: FontWeight.w600,),
                  ),
                ),
              ),

              Positioned(
                top: 520,
                left: 3020,
                height: 80,
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text("3",
                    style:  TextStyle(
                      color: labelColor, fontSize: 52, fontWeight: FontWeight.w600,),
                  ),
                ),
              ),

              // кнопка "Запустить эксперимент"
              Positioned(
                top: 1600, //1290,
                left: 20+245+35+245+35,
                height: 150,
                width: 520,
                child: ElevatedButton(
                  style: (!calculateParams.mainOn) ? onBtnStyle : offBtnStyle,
                  onPressed: onToggleMain,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          (!calculateParams.mainOn) ? Icons.play_arrow : Icons.pause,
                          size: 100,
                        ),
                        (!calculateParams.mainOn)
                            ? const Text("Включить \nустановку",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 40))
                            : const Text("Отключить \nустановку",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 40)),
                      ]),
                ),
              ),

              //кнопка "ABC"
              Positioned(
                top: 1600, //1565,
                left: 20,
                height: 150,
                width: 245,
                child: Tooltip(
                  message: "Обозначения",
                  textStyle: TextStyle(
                    fontSize: screenSize.shortestSide / 50,
                    color: Colors.white,
                  ),
                  verticalOffset: 30,
                  child: ElevatedButton(
                    style: abcBtnStyle,
                    onPressed: (() {
                      Navigator.pushNamed(context, '/exp/docs',
                          arguments: 'assets/exp/symbols.pdf');
                    }),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.abc_outlined,
                            size: 100,
                          ),
                        ]),
                  ),
                ),
              ),

              //кнопка "Указания"
              Positioned(
                top: 1600,
                left: 20 + 245 + 35,
                height: 150,
                width: 245,
                child: Tooltip(
                  message: "Указания по проведению эксперимента",
                  textStyle: TextStyle(
                    fontSize: screenSize.shortestSide / 50,
                    color: Colors.white,
                  ),
                  verticalOffset: 30,
                  child: ElevatedButton(
                    style: descBtnStyle,
                    onPressed: (() {
                      Navigator.pushNamed(context, '/exp/docs',
                          arguments: 'assets/exp/description.pdf');
                    }),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.import_contacts,
                            size: 100,
                          ),
                        ]),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
