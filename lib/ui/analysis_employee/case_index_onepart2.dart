import 'package:flutter/material.dart';

class CaseIndexOnePart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Image.asset('assets/image.png'),
            title: Text(
              'Shawky Ahmed',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text(
              'Specialist-Doctor',
              style: TextStyle(color: Color(0xFF22C7B8)),
            ),
            trailing: Text(
              '13 Mar 2020',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 7),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Details note: Lorem Ipsum is simply dummy text of '),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('printing and typesetting industry. Lorem Ipsum'),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 12),
              Expanded(
                child: Container(
                  height: 50,
                 // width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF22C7B8),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SGOT,SGPT',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.close, color: Colors.white),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF22C7B8),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ESR',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.close, color: Colors.white),
                  ],
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Container(
                  height: 50,
                 // width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF22C7B8),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Lipid profile',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.close, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Center(
            child: Container(
              height: 250,
              width: 1200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Color(0xFF22C7B8),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.download, color: Colors.white, size: 30),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: 200,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color(0xFF22C7B8)),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add, color: Color(0xFF22C7B8)),
                          Text('Upload Image',
                              style: TextStyle(color: Color(0xFF22C7B8))),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 80),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                        child: Text(
                      'Accept',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    child: Center(
                        child: Text(
                      'Busy',
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
