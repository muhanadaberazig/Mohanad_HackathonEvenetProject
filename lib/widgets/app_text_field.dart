import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,

    this.keyboardType = TextInputType.text,
    this.obscureText = false,
  }) : super(key: key);

  final String hint;
  final TextInputType keyboardType;
  final TextEditingController controller;

  final bool obscureText;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(

        label: Text(label,style: TextStyle(fontSize: 17,color: HexColor('#000000'))),
        enabledBorder: border(),
        focusedBorder: border(borderColor: Colors.black54)
      ),
    );
  }

  OutlineInputBorder border({Color borderColor = Colors.grey}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

