import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/nurse_call_view.dart';
import 'package:untitled36/ui/analysis_employee/attendancescreen.dart';
import 'package:untitled36/widgets/buildcard.dart';
import 'package:untitled36/widgets/userprofile.dart';

class Nursescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return BlocProvider(
        create: (context) => LogicBloc(),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(0.8),
                child: Stack(children: [
                  Column(
                    children: [
                      SizedBox(height: height * 0.01),
                      UserProfile(
                          name: 'Salma Ali',
                          role: 'Specialist, Nurse',
                          imagePath: 'assets/ssss.png'),
                      SizedBox(height: height * 0.02),
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        childAspectRatio: 0.91,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 19, bottom: 0.01),
                            child: BuildCard(
                              backGround: 'assets/abc.png',
                              title: 'Calls',
                              subtitle: '',
                              iconPath: 'assets/rr.png',
                              hight: 300,
                              width: 150,
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return NurseCallView();
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BuildCard(
                              backGround: 'assets/dfg.png',
                              title: 'Tasks',
                              subtitle: '',
                              iconPath: 'assets/dd.png',
                              hight: 185,
                              width: 100,
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22),
                            child: BuildCard(
                              backGround: 'assets/hh.png',
                              title: 'Reports',
                              subtitle: '',
                              iconPath: 'assets/aa.png',
                              hight: 140,
                              width: 90,
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 7, bottom: 23, right: 7, top: 0.01),
                            child: BuildCard(
                              backGround: 'assets/hjs.png',
                              title: 'Attendance - Leaving',
                              subtitle: '',
                              iconPath: 'assets/sas.png',
                              hight: 500,
                              width: 450,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => AttendanceScreen()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: height * 0.01),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: GestureDetector(
                          onTap: () {},
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/cc.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Cases',
                                    style: TextStyle(
                                      fontSize: 16,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 200,
                                  ),
                                  Image.asset(
                                    'assets/kl.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                ],
                              ),
                              height: 100,
                              width: double.infinity,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
