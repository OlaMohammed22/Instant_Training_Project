import 'package:flutter/material.dart';
import 'package:untitled36/ui/analysis_employee/attendancescreen.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF22C7BB),
      body: SafeArea(
        child: Center(
          child:

              //  SizedBox(height: screenHeight * 0.1),
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(alignment: Alignment.center, children: [
                Image.asset(
                  'assets/kkkl.png',
                  width: 130,
                  height: 130,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 10),
                Image.asset(
                  'assets/lklkl.png',
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ]),
              SizedBox(height: screenHeight * 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                child: Text(
                  "Your attendance has been registered",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenWidth * 0.05, color: Colors.white),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AttendanceScreen()),
                  );
                },
                child: Image.asset(
                  'assets/rrrr.png',
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.1,
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Image.asset(
                'assets/jkjk.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
