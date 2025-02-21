import 'package:flutter/material.dart';
import 'package:untitled36/resource/color.dart';
import 'package:untitled36/ui/Doctor/Doctor_screen.dart';
import 'package:untitled36/ui/Hr/Hr_screen.dart';
import 'package:untitled36/ui/Manager/Manager_screen.dart';
import 'package:untitled36/ui/Nurse/nurse_screen.dart';
import 'package:untitled36/ui/Recepionist/Recipionist_screen.dart';
import 'package:untitled36/ui/analysis_employee/analysisemployee.dart';
import 'package:untitled36/widgets/background.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({super.key});

  static String type = '';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Background(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Prototype Map",
                  style: TextStyle(color: ColorManger.primaryGreen, fontSize: 24),
                ),
                SizedBox(height: mediaQuery.height * 0.05),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(context, "Doctor", 83, Doctorscreen()),
                    SizedBox(width: 13),
                    buildButton(context, "Receptionist", 152, Receptionistscreen()),
                    SizedBox(width: 13),
                    buildButton(context, "Nurse", 83, Nursescreen()),
                  ],
                ),
                SizedBox(height: mediaQuery.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildButton(context, "Analysis Employee", 170, Analysisscreen()),
                    SizedBox(width: 13),
                    buildButton(context, "Manger", 100, Mangerscreen()),
                    SizedBox(width: 13),
                    buildButton(context, "HR", 50, Hrscreen()),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String title, double width, Widget screen) {
    return InkWell(
      onTap: () {
        type = title;
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => screen),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorManger.grey, width: 1, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(10),
        ),
        width: width,
        height: 50,
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(color: ColorManger.primaryGreen),
        ),
      ),
    );
  }
}