import 'package:flutter/material.dart';

class case_index_zero extends StatelessWidget {
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
        ],
      ),
    );
  }
}
