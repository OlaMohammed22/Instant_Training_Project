import 'package:flutter/material.dart';

class ReportDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Report Details"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Report Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  child: Text(
                    "End",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(10),
              children: [
                ReportComment(
                  name: "Ebrahem Elzainy",
                  role: "Specialist - Doctor",
                  message:
                      "Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  date: "13 Mar 2020",
                ),
                ReportComment(
                  name: "Shawky Ahmed",
                  role: "Specialist - Manager",
                  message:
                      "Details note: Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  date: "13 Mar 2020",
                  image: "assets/hospital.jpg",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your Reply",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.attachment),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                  ),
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white),
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

class ReportComment extends StatelessWidget {
  final String name;
  final String role;
  final String message;
  final String date;
  final String? image;

  const ReportComment({
    required this.name,
    required this.role,
    required this.message,
    required this.date,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 228, 227, 227),
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(role, style: TextStyle(color: Colors.teal)),
                  ],
                ),
                Spacer(),
                Text(date, style: TextStyle(color: Colors.grey)),
              ],
            ),
            SizedBox(height: 10),
            Text(message),
            if (image != null) ...[
              SizedBox(height: 10),
              Image.asset(image!,
                  height: 150, width: double.infinity, fit: BoxFit.cover),
            ],
          ],
        ),
      ),
    );
  }
}
