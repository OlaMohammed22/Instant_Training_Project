import 'package:flutter/material.dart';
import 'package:untitled36/ui/Doctor/Add_nurse_button.dart';
import 'package:untitled36/ui/Doctor/Medical_measurment.dart';
import 'package:untitled36/ui/Doctor/Medical_record.dart';

class case_index_zero extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      builder: (context) {
        return Padding(
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
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MedicalRecord()),
                                );
                              },
                              icon: Icon(Icons.assignment)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Medical record')
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Color(0xFF22C7B8),
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MedicalMeasurment()),
                                );
                              },
                              icon: Icon(Icons.speed)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Medical measurment')
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
                child: Text("Request", style: TextStyle(color: Colors.white)),
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
      child: Column(
        children: [
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Patient Name',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Ebraem Khaled',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Age',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '24 years',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Phone number',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '254110241423',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 1400,
            height: 50,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Date',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    '24.04.2021',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Doctor ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Salma Ahmed',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Nurse ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Ali Eslam',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Status ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Text(
                    'Process',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Case Descrption ',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
            width: 1400,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Descrption: details lorem loreum lbsum is here hello details and here we go ',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchScreen()),
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      'Add Nurse',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        backgroundColor: Color(0xFF22C7B8),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF22C7B8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  _showBottomSheet(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      'Request',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        backgroundColor: Color(0xFF22C7B8),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF22C7B8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
