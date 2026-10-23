import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_ui/register_screen.dart';
import 'package:login_ui/widget/custom_button.dart';
import 'package:login_ui/widget/custom_text_field.dart';
import 'package:login_ui/widget/logo.dart';

class LoginScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 160),
                Center(child: LogoText()),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Log in to existing LOGO account',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff515151),
                  ),
                ),
                SizedBox(height: 50),
                CustomTextField(
                  controller: username,
                  hintText: 'Username',
                  iconData: Icons.person_outline_outlined,
                ),
                SizedBox(height: 50),
                CustomTextField(
                  controller: password,
                  hintText: 'Password',
                  iconData: Icons.lock_outline,
                ),
                SizedBox(height: 7),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff515151),
                    ),
                  ),
                ),
                SizedBox(height: 35),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: CustomButton(buttonName: 'LOG IN',),
                ),
                SizedBox(height: 25),
                Text(
                  'Or sign in using ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff282828),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/google.svg'),
                    SizedBox(width: 25),
                    SvgPicture.asset('assets/images/facbock.svg'),
                    SizedBox(width: 25),
                    SvgPicture.asset('assets/images/apple.svg'),
                  ],
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account? ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff515151),
                      ),
                    ),
                    Text(
                      'Sign Up ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 50,
          child: SvgPicture.asset('assets/images/box2.svg'),
        ),
        Positioned(
          right: 150,
          child: SvgPicture.asset('assets/images/box1.svg'),
        ),
      ],
    );
  }
}
