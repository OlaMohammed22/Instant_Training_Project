import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/analysis_employee/fingerprintscreen.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.05, vertical: height * 0.05),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('assets/kkkk.png', width: 50, height: 50),
                SizedBox(width: width * 0.03),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Ebrahem Elzainy',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('Specialist, Doctor',
                        style: TextStyle(fontSize: 12, color: Color(0xff22C7B8))),
                  ],
                ),
                const Spacer(),
                Image.asset('assets/ddd.png'),
              ],
            ),
            SizedBox(height: height * 0.05),

            // Attendance Button with Bloc
            BlocBuilder<CaseBloc, Selected_tab>(
              builder: (context, state) {
                return InkWell(
                  onTap: () {
                    BlocProvider.of<CaseBloc>(context).add(ChangingTheTab(1));
                  },
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 9, left: 13),
                              child: Text('Attendance'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 13, top: 9),
                              child: Image.asset('assets/llll.png'),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13),
                          child: Text('09:00 AM',
                              style:
                                  TextStyle(color: Color(0xff22C7BB), fontSize: 11)),
                        ),
                        SizedBox(height: height * 0.03),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9, left: 13),
                          child: InkWell(
                            onTap: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FingerprintScreen()));
                            },
                            child: Image.asset('assets/opop.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
