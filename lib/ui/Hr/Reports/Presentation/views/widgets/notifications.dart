import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have new call from manager',
      'time': '02:39 AM',
      'image':
          'https://th.bing.com/th/id/OIP.RlkBejPeOgR9H6Y-OIyiXAHaJQ?w=208&h=260&c=7&r=0&o=5&dpr=1.3&pid=1.7'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have new task from manager',
      'time': '02:39 AM',
      'image':
          'https://th.bing.com/th/id/OIP.ZNvhPEffndmncsj6ztCOzwAAAA?w=207&h=301&c=7&r=0&o=5&dpr=1.3&pid=1.7'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have Medical record from analysis employee',
      'time': '02:39 AM',
      'image':
          'https://th.bing.com/th/id/OIP.PZsMLTIgXaEsdCA0VjTo7gHaLH?w=204&h=306&c=7&r=0&o=5&dpr=1.3&pid=1.7'
    },
    {
      'name': 'Ebrahem Khaled',
      'message': 'You have New Call from Receptionist',
      'time': '02:39 AM',
      'image':
          'https://th.bing.com/th/id/OIP.eTkpDm-N8Rx_GVghIfZ4YgHaEo?w=208&h=130&c=7&r=0&o=5&dpr=1.3&pid=1.7'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.only(bottom: 16),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(notification['image']!),
              ),
              title: Text(
                notification['name']!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(notification['message']!),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(notification['time']!,
                      style: TextStyle(color: Colors.grey)),
                  SizedBox(height: 4),
                  Icon(Icons.circle, color: Colors.green, size: 12),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
