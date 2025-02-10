//yes
import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Tasks Details", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Tasks Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/rr.png'),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Shawky Ahmed",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Specialist - Manager",
                        style: TextStyle(color: Colors.teal)),
                  ],
                ),
                Spacer(),
                Text("13 Mar 2020", style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Text(
                "Details note: Lorem Ipsum is simply dummy text of printing and typesetting industry. Lorem Ipsum"),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/hospital_room.jpg',
                width: screenWidth,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Text("To do", style: TextStyle(fontWeight: FontWeight.bold)),
            Column(
              children: List.generate(4, (index) {
                return CheckboxListTile(
                  value: index == 0,
                  onChanged: (bool? value) {},
                  title: Text("Lorem Ipsum is simply dummy text of"),
                  controlAffinity: ListTileControlAffinity.leading,
                  activeColor: Colors.teal,
                );
              }),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Add Note",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Text("Execution",
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
