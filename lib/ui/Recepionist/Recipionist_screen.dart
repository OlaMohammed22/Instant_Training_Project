import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/receptionist_call_view.dart';
import 'package:untitled36/ui/Recepionist/Reports/Presentation/views/receptionist_report_view.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/receptionist_task_view.dart';
import 'package:untitled36/ui/analysis_employee/attendancescreen.dart';
import 'package:untitled36/widgets/Dashboardcard.dart';
import 'package:untitled36/widgets/userprofile.dart';

class Receptionistscreen extends StatelessWidget {
  const Receptionistscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LogicBloc(),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                UserProfile(
                  name: 'Ebrahem Elzainy',
                  role: 'Specialist, Receptionist',
                  imagePath: 'assets/ss.png',
                ),
                SizedBox(height: 40),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.90,
                    children: [
                      DashboardCard(
                        title: 'Calls',
                        backgroundSvgPath: 'assets/c.svg',
                        svgIconPath: 'assets/w.svg',
                        hight: 600,
                        width: 240,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ReceptionistCallView();
                              },
                            ),
                          );
                        },
                      ),
                      DashboardCard(
                        title: 'Tasks',
                        backgroundSvgPath: 'assets/d.svg',
                        svgIconPath: 'assets/x.svg',
                        hight: 230,
                        width: 240,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ReceptionistTaskView();
                              },
                            ),
                          );
                        },
                      ),
                      DashboardCard(
                        title: 'Reports',
                        backgroundSvgPath: 'assets/a.svg',
                        svgIconPath: 'assets/t.svg',
                        hight: 240,
                        width: 240,
                        onTap: () {

                           Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ReceptionistReportView();
                              },
                            ),
                          );
                        },
                      ),
                      DashboardCard(
                        title: 'attendance - Leaving',
                        backgroundSvgPath: 'assets/b.svg',
                        svgIconPath: 'assets/s.svg',
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
