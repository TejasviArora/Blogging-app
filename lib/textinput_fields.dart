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
    return TextField(
      controller: customController,
      obscureText: obscureText,
      keyboardType: inputType,
      style: TextStyle(color: Colors.white, fontSize: 25),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        labelText: data,
        labelStyle: TextStyle(
          fontSize: 25,
          color: Colors.white,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
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