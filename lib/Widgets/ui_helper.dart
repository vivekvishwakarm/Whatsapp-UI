import 'package:flutter/material.dart';

class UiHelper {
  //Custom Button
  static customButton(
      {required VoidCallback callback, required String buttonName}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: Text(
          buttonName,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }

  //custom text
  static customText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? const Color(0XFF5E5E5E),
        fontWeight: fontWeight,
      ),
    );
  }

  //Custom Container
  static customContainer(TextEditingController otpController) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0XFFD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: otpController,
          decoration: const InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
