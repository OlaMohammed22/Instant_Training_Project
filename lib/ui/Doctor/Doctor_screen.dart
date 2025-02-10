import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/ui/Doctor/Cases.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/doctor_call_view.dart';
import 'package:untitled36/ui/Doctor/Reports/Presentation/views/doctor_report_view.dart';
import 'package:untitled36/ui/Doctor/Tasks/Presentation/views/doctor_task_view.dart';
import 'package:untitled36/ui/analysis_employee/attendancescreen.dart';
import 'package:untitled36/widgets/buildcard.dart';
import 'package:untitled36/widgets/userprofile.dart';

class Doctorscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;

    return BlocProvider(
        create: (context) => LogicBloc(),
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0.8),
              child: Stack(children: [
                Column(
                  children: [
                    SizedBox(height: height * 0.01),
                    UserProfile(
                        name: 'Mahmoud Ahmed',
                        role: 'Specialist, Doctor',
                        imagePath: 'assets/hjk.png'),
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
                          padding: const EdgeInsets.only(top: 19, bottom: 0.2),
                          child: BuildCard(
                            backGround: 'assets/abc.png',
                            title: 'Calls   .',
                            subtitle: 'You have new +1 Request',
                            iconPath: 'assets/rr.png',
                            hight: 600,
                            width: 240,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DoctorCallView();
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
                            title: 'Tasks   .',
                            subtitle: 'You have new +1 Task',
                            iconPath: 'assets/dd.png',
                            hight: 230,
                            width: 240,
                            onTap: () {
                               Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DoctorTaskView();
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 22),
                          child: BuildCard(
                            backGround: 'assets/hh.png',
                            title: 'Reports   .',
                            subtitle: 'You have new +3 Report',
                            iconPath: 'assets/aa.png',
                            hight: 240,
                            width: 240,
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return DoctorReportView();
                                  },
                                ),
                              );
                            },
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
                            hight: 600,
                            width: 240,
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
                    //  SizedBox(height: height * 0),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: GestureDetector(
                        onTap: () {},
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Cases_page()),
                            );
                          },
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
        ));
  }
}
