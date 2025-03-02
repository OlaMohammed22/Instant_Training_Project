import 'package:flutter/material.dart';

import '../../Data/Show_details_model.dart';

class case_index_zero extends StatelessWidget {
  Show_details my_case;
  case_index_zero(this.my_case);
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
                    my_case.data.patient_name.toString(),
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
                    '${my_case.data.age} years',
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
                    '${my_case.data.phone}',
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
                    '${my_case.data.createdAt}',
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
                    '${my_case.data.doctorId}',
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
                    '${my_case.data.nurseId}',
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
                    '${my_case.data.status}',
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
                    "${my_case.data.description}  " ,
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
        ],
      ),
    );
  }
}
