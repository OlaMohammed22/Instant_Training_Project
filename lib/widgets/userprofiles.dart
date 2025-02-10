import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key, required this.name, required this.role,required this.imagePath});
  final String name;
  final String role;
  final  imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
            // CircleAvatar(
            //  radius: 30,
            //   backgroundImage: child('assets/ss.png'),
            //  ),
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
        SvgPicture.asset('assets/u.svg')
      ],
    );
  }
}
