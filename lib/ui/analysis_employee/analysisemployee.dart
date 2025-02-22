import 'package:flutter/material.dart';
import 'package:untitled36/ui/analysis_employee/Requests_cases.dart';
import 'package:untitled36/ui/analysis_employee/attendancescreen.dart';
import 'package:untitled36/widgets/Dashboardcard.dart';
import 'package:untitled36/widgets/userprofile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc.dart';


class Analysisscreen extends StatelessWidget {
  const Analysisscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   BlocProvider(
      create: (context) => LogicBloc(),
      child: 
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            UserProfile(name: 'Fayez Bahgt',role: 'Specialist, Analysis employee',imagePath: 'assets/rararar.png',),
            SizedBox(height: 40),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.90,
                children: [
                  DashboardCard(
                    title: 'Cases',
                    backgroundSvgPath: 'assets/c.svg',
                    svgIconPath: 'assets/anal.svg',
                    hight: 600,
                    width: 240,
                    
                    onTap: () {
                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RequestCases()),
  );


                    },
                  ),
                  DashboardCard(
                    title: 'Tasks',
                    backgroundSvgPath: 'assets/d.svg',
                    svgIconPath: 'assets/x.svg',
                    hight: 240,
                    width: 240,
                    onTap: () {},
                  ),
                  DashboardCard(
                    title: 'Reports',
                    backgroundSvgPath: 'assets/a.svg',
                    svgIconPath: 'assets/t.svg',
                    hight: 230,
                    width: 240,
                    onTap: () {},
                  ),
                  DashboardCard(
                    title: 'attendance - Leaving',
                    backgroundSvgPath: 'assets/b.svg',
                    svgIconPath: 'assets/s.svg',
                    hight: 600,
                    width: 240,
                    onTap: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AttendanceScreen()),
  );},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}