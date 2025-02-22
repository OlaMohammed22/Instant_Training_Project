import 'package:flutter/material.dart';
import 'package:untitled36/ui/Manager/task_view.dart';

class TaskDetailsScreen extends StatefulWidget {
  @override
  _TaskDetailsScreenState createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  final TextEditingController taskController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final List<String> todoList = [
    'Lorem Ipsum is simply dummy text of',
    'Lorem Ipsum is simply dummy text of',
    'Lorem Ipsum is simply dummy text of',
  ];

  void _showAddTodoBottomSheet(BuildContext context) {
    TextEditingController todoController = TextEditingController();

    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Ensures the keyboard does not hide the bottom sheet
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            left: 20,
            right: 20,
            top: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                maxLines: 5,
                controller: todoController,
                decoration: InputDecoration(
                  hintText: "To do details",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  onPressed: () {
                    if (todoController.text.isNotEmpty) {
                      setState(() {
                        todoList.add(todoController.text);
                      });
                      Navigator.pop(context); // Close bottom sheet
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                  ),
                  child: Text("Add"),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tasks Details"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: taskController,
              decoration: InputDecoration(
                  labelText: 'Task Name', border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                ),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return TaskView();
                      },
                    ),
                  );
                },
                title: Text('Select Employee'),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(
                  labelText: 'Description', border: OutlineInputBorder()),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("To do",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                IconButton(
                  icon: Image.asset("assets/add.png",
                      width: 24, height: 24), // استبدال الأيقونة بصورة
                  onPressed: () {
                    _showAddTodoBottomSheet(context);
                  },
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.asset("assets/delete.png",
                        width: 24, height: 24), // استبدال أيقونة الحذف بصورة
                    title: Text(todoList[index]),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 170,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/upload.jpg", width: 70, height: 70),
                  SizedBox(
                    height: 10,
                  ), // استبدال أيقونة الرفع بصورة
                  TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/upload image.jpg",
                      width: 140,
                    ), // استبدال زر "Upload Image" بصورة
                    label: Text(""),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                child: Text(
                  'Send',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ), // استبدال زر "Send" بصورة
              ),
            ),
          ],
        ),
      ),
    );
  }
}
