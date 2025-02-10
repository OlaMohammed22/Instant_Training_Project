import 'package:flutter/material.dart';
import 'package:untitled36/ui/analysis_employee/Case_detials.dart';

class RequestCases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Requests'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            // height: 220,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.all(9),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
              color: Colors.white,
              border: Border.all(color: Colors.white70),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ListTile(
                  leading: _buildIconContainer(Icons.person),
                  title: Text('Ebrahem Khaled', style: TextStyle(fontSize: 15)),
                ),
                ListTile(
                  leading: _buildIconContainer(Icons.medical_services),
                  title:
                      Text('Dr. Salma Khaled', style: TextStyle(fontSize: 15)),
                ),
                ListTile(
                  leading: _buildIconContainer(Icons.calendar_month_outlined),
                  title: Text('24.04.2021', style: TextStyle(fontSize: 15)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(
                      label: 'Show Details',
                      icon: Icons.add_rounded,
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaseDetails()),
                        );
                      },
                    ),
                    SizedBox(width: 5),
                    _buildButton(
                      label: 'Busy',
                      icon: Icons.close,
                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CaseDetails()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildIconContainer(IconData icon) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: Color(0xFF22C7B8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Icon(icon, color: Colors.white)),
    );
  }

  Widget _buildButton(
      {required String label,
      required IconData icon,
      required Color color,
      required VoidCallback onPressed}) {
    return Expanded(
      child: Container(
        // width: 150,
        // height: 50,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(width: 5),
              Text(label, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
