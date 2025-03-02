import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks Details"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: "Tasks Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildUserCard(
                name: "Shawky Ahmed",
                role: "Specialist - Manager",
                date: "13 Mar 2020",
                details:
                    "Details note: Lorem Ipsum is simply dummy text of printing and typesetting industry.",
                imagePath: "assets/Rectangle 1906.png",
                postImage: "assets/NoPath - Copy (10).png",
              ),
              SizedBox(height: 10),
              _buildToDoList(),
              SizedBox(height: 10),
              _buildUserCard(
                name: "Essam Ahmed",
                role: "Specialist - Manager",
                date: "13 Mar 2020",
                details:
                    "Details note: Lorem Ipsum is simply dummy text of printing and typesetting industry.",
                imagePath: "assets/NoPath - Copy (20).png",
                isReply: true,
              ),
              SizedBox(height: 10),
              _buildFinishTaskButton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserCard({
    required String name,
    required String role,
    required String date,
    required String details,
    required String imagePath,
    String? postImage,
    bool isReply = false,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    Text(role,
                        style: TextStyle(color: Colors.blue, fontSize: 14)),
                  ],
                ),
                Spacer(),
                Text(date, style: TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
            SizedBox(height: 10),
            Text(details, style: TextStyle(fontSize: 14)),
            if (postImage != null) ...[
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(postImage,
                    height: 150, width: double.infinity, fit: BoxFit.cover),
              ),
            ],
            if (isReply)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text("Reply - Doctor",
                    style: TextStyle(color: Colors.grey)),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildToDoList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("To do",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Column(
          children: List.generate(4, (index) {
            bool showCheck =
                index == 0 || index == 3; // الأول والأخير بهما علامة الصح
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: showCheck
                    ? Colors.green
                    : Colors.transparent, // خلفية خضراء لعناصر التحقق فقط
                radius: 12, // تصغير حجم الدائرة
                child: showCheck
                    ? Icon(Icons.check,
                        color: Colors.white, size: 14) // علامة الصح بيضاء
                    : Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.grey, width: 2), // دائرة فارغة
                        ),
                      ),
              ),
              title: Text("Lorem Ipsum is simply dummy text of"),
            );
          }),
        ),
      ],
    );
  }

  Widget _buildFinishTaskButton() {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 2,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: SizedBox(
                width: double.infinity, // يجعل الزر بعرض الشاشة بالكامل
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Finish Task"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 15), // ارتفاع مناسب
                  ),
                ),
              ),
            )));
  }
}
