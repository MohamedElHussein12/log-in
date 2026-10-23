import 'package:flutter/material.dart';
import 'package:login_ui/app_color.dart';

class LogoText extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) => LinearGradient(
        colors: [AppColor.primaryColor, AppColor.secandaryColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, bounds.height, bounds.width)),
      child: Text(
        'LOGO',
        style: TextStyle(
          fontSize: 60,
          fontWeight: FontWeight.w500,
          fontFamily: 'Courier_Prime',
          color: Colors.white,
        ),
      ),
    );
  }
}
