import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/Data/show_record_repo.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';

import '../../Data/Show_details_model.dart';

class CaseIndexOne extends StatelessWidget {
  Show_details my_case;
  CaseIndexOne(this.my_case);
  @override
  Widget build(BuildContext context) {
    return


               Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Image.asset('assets/doctor.png'),
                      title: Text(
                        'Aml Ezzat',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'Specialist-Nurse',
                        style: TextStyle(
                          color: Color(0xFF22C7B8),
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Details note:Lorem lpsum is simply dummy text of '),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('printing and typcasting industry .lorem lpsum'),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Medical record',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Color(0xFF22C7B8),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                      Text('Blood pressure: ${my_case.data.blood_pressure}'),
                          SizedBox(width: 150),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Color(0xFF22C7B8),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(width: 10),
                    Text('Sugar analysis: ${my_case.data.sugar_analysis}'),

                          //      Text('Sugar analysis: ${record.sugarAnalysis ?? 'N/A'}'),
                          SizedBox(width: 153),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Image.asset('assets/anly.png'),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.download,
                            color: Color(0xFF22C7B8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );

  }
}