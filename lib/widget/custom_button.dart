import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName});
  final String buttonName;
  @override
  Widget build(BuildContext context) {
  
    return Container(
      width: 200,
      height: 54,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 80, spreadRadius: 1),
        ],
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          colors: [Color(0xff8EDDFF), Color(0xff769DAD)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
