import 'package:flutter/material.dart';

Color backColor = Colors.grey.shade300;
Color schemeBackColor = const Color(0xfff5efe5);
Color indColor = const Color(0xffdee4d5);
Color indErrColor = const Color(0xfff3e3e3);
Color setterColor = const Color(0xffeef1e9);
Color labelColor = const Color(0xff5b316a);
Color onButtonColor = const Color(0xff5d723d);
Color offButtonColor = const Color(0xff9e4a4c);
Color abcButtonColor = const Color(0xff5b316a);
Color descButtonColor = const Color(0xff823d61);
Color settingsButtonColor = const Color(0xff78747a);
Color errorColor = const Color(0xffa12b2b);


final ButtonStyle descBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: descButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle abcBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: abcButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle settingsBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: settingsButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle onBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: onButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle offBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: offButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle onQBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: offButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle offQBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: onButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);


final ButtonStyle okBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: onButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);

final ButtonStyle cancelBtnStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: offButtonColor, textStyle: const TextStyle(
    //     fontSize: 17.sp,
    fontWeight: FontWeight.w800,
  ),
  maximumSize: const Size(150, 70),
  minimumSize: const Size(100, 60),
  padding: const EdgeInsets.only(left: 4, right: 4),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5),
    //side: BorderSide(color: Colors.red),
  ),
  shadowColor: const Color(0xff000000),
  elevation: 5,
);