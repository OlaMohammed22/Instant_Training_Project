import 'package:flutter/material.dart';

class EmployeeScreen extends StatefulWidget {
  @override
  _EmployeeScreenState createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  final List<Map<String, dynamic>> employees = [
    {
      'name': 'Salma Ahmed',
      'role': 'Doctor',
      'status': 'online',
      'image': 'assets/salma.png'
    },
    {
      'name': 'Helmy Fadl',
      'role': 'Doctor',
      'status': 'online',
      'image': 'assets/helmy.png'
    },
    {
      'name': 'Shawky Haleem',
      'role': 'Analysis',
      'status': 'online',
      'image': 'assets/shawky.png'
    },
    {
      'name': 'Islam Mahmoud',
      'role': 'HR',
      'status': 'online',
      'image': 'assets/islam.png'
    },
    {
      'name': 'Ali Ahmed',
      'role': 'Analysis',
      'status': 'offline',
      'image': 'assets/ali.png'
    },
    {
      'name': 'Hend Ali',
      'role': 'Doctor',
      'status': 'offline',
      'image': 'assets/hend.jpeg'
    },
    {
      'name': 'Ahmed Zain',
      'role': 'Doctor',
      'status': 'offline',
      'image': 'assets/ahmed.png'
    },
    {
      'name': 'Zeyad Ali',
      'role': 'HR',
      'status': 'offline',
      'image': 'assets/zyad.jpeg'
    },
  ];

  String selectedFilter = 'All';

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredEmployees = selectedFilter == 'All'
        ? employees
        : employees.where((e) => e['role'] == selectedFilter).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Employee'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for Employee',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  ['All', 'Doctor', 'Nurse', 'HR', 'Analysis'].map((filter) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: ChoiceChip(
                    label: Text(filter),
                    selected: selectedFilter == filter,
                    onSelected: (selected) {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredEmployees.length,
              itemBuilder: (context, index) {
                final employee = filteredEmployees[index];
                return ListTile(
                  leading: Stack(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(employee['image']),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 1,
                        right: 1,
                        child: Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: employee['status'] == 'online'
                                ? Colors.green
                                : Colors.orange,
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Text(employee['name']),
                  subtitle: Text('Specialist - ${employee['role']}'),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.teal,
        shape: CircleBorder(),
      ),
    );
  }
}
