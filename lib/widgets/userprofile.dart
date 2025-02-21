import 'package:flutter/material.dart';
import 'package:untitled36/ui/Hr/Reports/Presentation/views/widgets/notifications.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({
    super.key,
    required this.name,
    required this.role,
    required this.imagePath,
    this.onTap,
  });

  final String name;
  final String role;
  final String imagePath;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onTap,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(
                  role,
                  style: TextStyle(fontSize: 14, color: Color(0xff22C7B8)),
                ),
              ],
            ),
          ],
        ),
        InkWell(
          child: Image.asset('assets/gg.png'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return NotificationScreen();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
