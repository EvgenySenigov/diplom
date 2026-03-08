import 'style.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget
{
  const Indicator({
    Key? key,
    required this.top,
    required this.left,
    required this.height,
    required this.width,

    required this.value,
    required this.units,
  }) : super(key: key);

  final double top;
  final double left;
  final double height;
  final double width;

  final double value;
  final String units;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left, //202,
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          color: indColor,
          //: indErrColor,
          border: Border.all(
            width: 2,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x55000000),
              offset: Offset(0, 10),
              blurRadius: 15,
            ),
          ],
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        padding: const EdgeInsets.only(left: 15, right: 15),
        alignment: Alignment.center,
        child: Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FixedColumnWidth(80),
            },
            children: [
              TableRow(children: [
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Text(
                    value.toStringAsFixed(2),
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.black, fontSize: 52, fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  units,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.black, fontSize: 52, fontWeight: FontWeight.w600),
                )
              ]),

            ]),
      ),
    );
  }
}

class Setter extends StatelessWidget {
  const Setter({
    Key? key,
    required this.top,
    required this.left,
    required this.width,

    required this.value,
    required this.onChanged,

    this.label="R",
    this.subLabel="1",
    this.units="Ом",
    this.min=1,
    this.max=100,

    this.step=0.1,
    this.decimals=1,

  }) : super(key: key);

  final double top, left, width,
      min,
      max,
      value,
      step;

  final int decimals;

  final Function onChanged;

  final String units, label, subLabel;


  @override
  Widget build(BuildContext context) {
    return
      Positioned(
        top: top,
        left: left,
        width: width,
        child: Container(
          decoration: BoxDecoration(
            color: setterColor,
            boxShadow: const [
              BoxShadow(
                color: Color(0x55000000),
                offset: Offset(0, 10),
                blurRadius: 15,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          padding: const EdgeInsets.only(left: 15, right: 15),
          alignment: Alignment.center,
          // color: Colors.green,
          constraints:
          const BoxConstraints(maxHeight: 350, maxWidth: 150),
          margin: const EdgeInsets.only(
              top: 5, left: 5, right: 5, bottom: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        color: Colors.black, fontSize: 42),
                    children: [
                      TextSpan(
                        text: label,
                      ),
                      WidgetSpan(
                        child: Transform.translate(
                          offset: const Offset(0.0, 4.0),
                          child:  Text(
                            subLabel,
                            style: const TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SpinBox(
                  min: min,
                  max: max,
                  value: value,
                  acceleration: 0.1,
                  step: step,
                  decimals: decimals,
                  direction: Axis.vertical,
                  incrementIcon:
                  const Icon(Icons.keyboard_arrow_up, size: 64),
                  decrementIcon:
                  const Icon(Icons.keyboard_arrow_down, size: 64),
                  textStyle: const TextStyle(fontSize: 42),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: const OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10))),
                    contentPadding: const EdgeInsets.all(24),
                    suffix: Text(units),
                    filled: true,
                  ),
                  validator: (text) => text!.isEmpty ? 'Invalid' : null,
                  onChanged: (value) => onChanged(value),
                  //  enabled: (!controller.calcStarted) && (!controller.isPlaying), //controller.isDrawDone,
                )
              ]),
        ),
      );
  }
}

class Label extends StatelessWidget {
  const Label({
    Key? key,
    required this.top,
    required this.left,
    required this.width,
    this.quarterTurns=0,
    this.label="R",
    this.subLabel="",
    this.labelFontSize=46,
    this.subLabelFontSize=32,
  }) : super(key: key);

  final double top, left, width, labelFontSize, subLabelFontSize;
  final int quarterTurns;

  final String label, subLabel;

  @override
  Widget build(BuildContext context) {
    return
      Positioned(
        top: top,
        left: left,
        width: width,
        child: RotatedBox(
          quarterTurns: quarterTurns,
          child:  RichText(
            text: TextSpan(
              style:  TextStyle(
                color: labelColor, fontSize: labelFontSize, fontWeight: FontWeight.w600,),
              children: [
                TextSpan(
                  text: label,
                ),
                WidgetSpan(
                  child: Transform.translate(
                    offset: const Offset(0.0, 4.0),
                    child:  Text(
                      subLabel,
                      style: TextStyle(fontSize: subLabelFontSize, fontWeight: FontWeight.w600,color: labelColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  }
}
