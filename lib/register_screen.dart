import 'package:flutter/material.dart';
import 'package:login_ui/splash_screen.dart';
import 'package:login_ui/widget/custom_button.dart';
import 'package:login_ui/widget/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstName = TextEditingController();
    TextEditingController lastName = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new, 
            color: Color(0xff000000),
          ),
          onPressed: () {
            Navigator.pop(context);   
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Let’s Get Started!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Center(
                child: Text(
                  'Create an account on MNZL to get all features',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff515151),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                controller: firstName,
                hintText: 'First Name',
                iconData: Icons.person_outline_outlined,
              ),
              const SizedBox(height: 28),
              CustomTextField(
                controller: lastName,
                hintText: 'Last Name',
                iconData: Icons.person_outline_outlined,
              ),
              const SizedBox(height: 28),
              CustomTextField(
                controller: email,
                hintText: 'Email',
                iconData: Icons.email_outlined,
              ),
              const SizedBox(height: 28),
              CustomTextField(
                controller: password,
                hintText: 'Password',
                iconData: Icons.lock_outline,
              ),
              const SizedBox(height: 28),
              CustomTextField(
                controller: confirmPassword,
                hintText: 'ConfirmPassword',
                iconData: Icons.lock_outline,
              ),
              const SizedBox(height: 33),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
                child: const CustomButton(buttonName: 'CREATE'),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff515151),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      ); 
                    },
                    child: const Text(
                      'Login here',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
