import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  int maxLength;
  double fontSize;

  AppTextField({
    Key? key,
    required this.textEditingController,
    required this.hintText,
    required this.icon,
    this.isObscure = false,
    this.maxLength = 1,
    this.fontSize = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      margin: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              blurRadius: 10,
              spreadRadius: 7,
              offset: const Offset(1, 10),
              color: Colors.grey.withOpacity(0.2))
        ],
      ),
      child: TextField(
        maxLines: maxLength,
        controller: textEditingController,
        style: TextStyle(
            color: Colors.black38,
            fontSize: fontSize,
            fontWeight: FontWeight.bold),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Colors.black12, fontWeight: FontWeight.bold),
            prefixIcon: Icon(
              icon,
              color: Colors.yellow,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                const BorderSide(width: 1.0, color: Colors.yellowAccent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                const BorderSide(width: 1.0, color: Colors.white)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}