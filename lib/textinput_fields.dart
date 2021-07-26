import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextInputs extends StatelessWidget {
  final String data;
  final TextInputType inputType;
  final bool obscureText;
  TextEditingController customController;

  var kValidator;
  TextInputs({
    required this.data,
    required this.inputType,
    required this.obscureText,
    required this.customController,
    required this.kValidator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 60,
      child: TextField(
        controller: customController,
        obscureText: obscureText,
        keyboardType: inputType,
        style: TextStyle(color: Colors.black, fontSize: 22),
        cursorColor: Color(0xff3A9A66),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A9A66), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          labelText: data,
          labelStyle: TextStyle(
            fontSize: 25,
            color: Color(0xff3A9A66),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff3A9A66), width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
        ),
      ),
    );
  }
}
// (value) {
//     if (value.isEmpty) {
//       return 'Please enter some text';
//     }
//     return null;
//   },