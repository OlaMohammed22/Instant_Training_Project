import 'package:flutter/material.dart';

import 'package:untitled36/resource/color.dart';
import 'package:untitled36/resource/inputext.dart';
import 'package:untitled36/ui/commen_screens/startupscreen.dart';
import 'package:untitled36/widgets/background.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.07),
            child: Column(
              children: [
                SizedBox(height: height * 0.16),
                Center(
                  child: Image.asset(
                    "assets/logo.png",
                    width: width * 0.4,
                    height: height * 0.2,
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Welcome back !",
                  style: TextStyle(
                    color: ColorManger.primaryGreen,
                    fontSize: width * 0.07,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "To Continue, Login Now",
                  style: TextStyle(
                    color: ColorManger.grey,
                    fontSize: width * 0.035,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: height * 0.05),
                InputTextt.inputTextStyleWithoutSuffixIcon(
                  "assets/Group663.svg",
                  "Phone Number",
                ),
                SizedBox(height: height * 0.02),
                InputTextt.inputTextStyleWithSuffixIcon(
                  "assets/Group337.svg",
                  "Password",
                  const Icon(Icons.remove_red_eye_outlined),
                ),
                SizedBox(height: height * 0.015),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forget Password ?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ),
                ),
                SizedBox(height: height * 0.04),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StartUpView()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorManger.primaryGreen,
                    ),
                    width: double.infinity,
                    height: height * 0.06,
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}