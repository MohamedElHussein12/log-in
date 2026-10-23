import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/login_screen.dart';
import 'package:login_ui/widget/logo.dart';

class SplashScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 115),
                LogoText(),
                SizedBox(height: 60),
                Image.asset('assets/images/sign.jpg', width: 850),
                SizedBox(height: 45),
                Text(
                  'Lorem Ipsum ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  textAlign: TextAlign.center,
                  'Lorem Ipsum is a dummy text used as placeholder ',
                  style: TextStyle(
                    color: Color(0xff515151),
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,

          left: 60,
          child: SvgPicture.asset('assets/images/Vector.svg'),
        ),
        Positioned(
          top: 300,
          left: 34,
          child: SvgPicture.asset('assets/images/Group.svg'),
        ),
        Positioned(
          top: 0,
          left: 130,
          bottom: 650,

          child: SvgPicture.asset('assets/images/Vector.svg'),
        ),
        Positioned(
          top: 250,
          left: 105,
          child: SvgPicture.asset('assets/images/Group.svg'),
        ),
      ],
    );
  }
}

