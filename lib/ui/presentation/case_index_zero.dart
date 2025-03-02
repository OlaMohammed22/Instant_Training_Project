import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/Data/Displaycases_repo.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/Doctor/Add_nurse_button.dart';
import 'package:untitled36/ui/Doctor/Medical_measurment.dart';
import 'package:untitled36/ui/Doctor/Medical_record.dart';

import '../../Data/Show_details_model.dart';


class CaseIndexZero extends StatelessWidget {
  Show_details my_case;
  CaseIndexZero(this.my_case);
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return


          Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF22C7B8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MedicalRecord(),
                                ),
                              );
                            },
                            icon: Icon(Icons.assignment),
                          ),
                          SizedBox(height: 5),
                          Text('Medical record'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFF22C7B8),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MedicalMeasurment(),
                                ),
                              );
                            },
                            icon: Icon(Icons.speed),
                          ),
                          SizedBox(height: 5),
                          Text('Medical measurement'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Request Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Request",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  
@override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    child:
            Padding(
              padding: EdgeInsets.all(16.0),
              child:
  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Patient Name: ${my_case.data?.patient_name ?? "N/A"}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('Age: ${my_case.data?.age ?? "N/A"} years'),
                  Text('Phone: ${my_case.data?.phone ?? "N/A"}'),
                  Text('Doctor: ${my_case.data?.doctorId ?? "N/A"}'),
                  Text('Nurse: ${my_case.data?.nurseId ?? "N/A"}'),
                  Text('Status: ${my_case.data?.status ?? "N/A"}'),
                  SizedBox(height: 8),
                  Text(
                    'Case Description:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(my_case.data?.description ?? "N/A"),
                  //SizedBox(height: 20),

                ],
              ),
            )

  );
}

}