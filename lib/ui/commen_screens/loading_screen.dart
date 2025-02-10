import 'dart:async';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:untitled36/resource/color.dart';
import 'package:untitled36/ui/commen_screens/login.dart';
import 'package:untitled36/widgets/background.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(const Duration(seconds: 5), _goNext);
  }

  _goNext() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginView()),
    );
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;
          
          return Background(
            child: Stack(
              children: [
                Positioned(
                  top: screenHeight * 0.25,
                  left: screenWidth * 0.5 - (screenWidth * 0.2),
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.2,
                  child: Image.asset("assets/Background_logo.png"),
                ),
                Positioned(
                  top: screenHeight * 0.75,
                  left: screenWidth * 0.1,
                  right: screenWidth * 0.1,
                  child: Column(
                    children: [
                      LinearPercentIndicator(
                        width: screenWidth * 0.8,
                        lineHeight: screenHeight * 0.01,
                        percent: 1,
                        animation: true,
                        animationDuration: 5000,
                        backgroundColor: ColorManger.grey,
                        progressColor: ColorManger.primaryGreen,
                        barRadius: const Radius.circular(5),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        "Loading...",
                        style: TextStyle(
                          color: ColorManger.primaryGreen,
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}