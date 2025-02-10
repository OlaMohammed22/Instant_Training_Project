import 'package:flutter/material.dart';

class case_index_zero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Container(
              width: screenWidth,
              decoration: BoxDecoration(
                color: Color(0xffFDE8D9),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'You have a request',
                          style: TextStyle(
                              color: Color.fromARGB(255, 245, 103, 8),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.close)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'You have a new request from the doctor, please follow up and implement the request as soon as possible.',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Show details',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        backgroundColor: Color.fromARGB(255, 217, 92, 2),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            buildInfoRow('Patient Name', 'Ebraem Khaled', screenWidth),
            buildInfoRow('Age', '24 years', screenWidth),
            buildInfoRow('Phone number', '254110241423', screenWidth),
            buildInfoRow('Date', '24.04.2021', screenWidth),
            buildInfoRow('Doctor', 'Salma Ahmed', screenWidth),
            buildInfoRow('Nurse', 'Ali Eslam', screenWidth),
            buildInfoRow('Status', 'Process', screenWidth),
            buildInfoRow('Case Descrption', '', screenWidth),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                'Descrption: details lorem ipsum is here, hello details and here we go.',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            flex: screenWidth > 600 ? 2 : 3,
            child: Text(label, style: TextStyle(color: Colors.grey)),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: screenWidth > 600 ? 3 : 2,
            child: Text(value, style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
