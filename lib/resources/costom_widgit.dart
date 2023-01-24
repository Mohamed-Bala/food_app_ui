import 'package:flutter/material.dart';

import 'color_manager.dart';

// ignore: must_be_immutable
class TextFormWidget extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final Function validator;
  Widget? suffixIcon;
  Widget? prefixIcon;
  final TextInputType textInputType;

  final String text;
  TextFormWidget({
    Key? key,
    required this.controller,
    this.obscureText = false,
    required this.validator,
    required this.text,
    required this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 70,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xFFE5E5E5),
            spreadRadius: 0,
            blurRadius: 8,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        cursorColor: Colors.black,
        keyboardType: textInputType,
        validator: (value) => validator(value),
        decoration: InputDecoration(
          fillColor: const Color(0xFFFFFFFF),
          filled: true,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: text,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.primary,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
//______________________________________________________________________________

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.width = 157,
    this.height = 57,
  }) : super(key: key);
  final String text;
  final Function onPressed;

  final double width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          elevation: 10,
          shadowColor: Colors.grey,
          primary: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
        child: Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
