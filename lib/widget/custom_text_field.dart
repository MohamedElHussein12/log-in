import 'package:flutter/material.dart';
import 'package:login_ui/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.hintText, required this.iconData});
  final TextEditingController controller;
  final String hintText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF2F2F2),

        hintText: hintText,
        prefixIcon: Icon(iconData),
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
