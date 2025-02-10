import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled36/resource/color.dart';


class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height / 10,
          left: 20,
          child: Row(
            children: [
              Image.asset(
                "assets/profile_imagee.png",
                width: 70,
                height: 70,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ebrahem Elzainy",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  Text(
                    "Specialist , Receptionist",
                    style: TextStyle(
                        color: ColorManger.primaryGreen,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              // Padding(
              //   padding: EdgeInsets.only(left: 120),
              //   child: Icon(Icons.notifications)),
              //Stack(children: [Icon(Icons.notifications)],)
            ],
          ),
        ),
        Positioned(
          child: SvgPicture.asset(
            "assets/images/notification.svg",
            width: 30,
            height: 30,
          ),
          right: 20,
          top: (MediaQuery.of(context).size.height / 10) + 20,
        ),
        Positioned(
            top: 250,
            left: 20,
            child: Stack(
              alignment: Alignment(0, 0),
              children: [
                Container(
                  width: 185,
                  height: 240,
                  decoration: BoxDecoration(
                      color: Color(0xff5F9EDC),
                      borderRadius: BorderRadius.circular(20)),
                ),
                Column(
                  children: [
                    SvgPicture.asset(
                      "assets/images/profile_logo.svg",
                      width: 80,
                      height: 80,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Calls",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            )),
        Positioned(
          top: 250,
          right: 20,
          child: Stack(
              alignment: Alignment(0, 0),
              children: [
            Container(
              width: 185,
              height: 180,
              decoration: BoxDecoration(
                  color: Color(0xff5FDC89),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Column(
              children: [
                SvgPicture.asset(
                  "assets/images/tasks.svg",
                  width: 80,
                  height: 80,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tasks",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ]),
        ),
        Positioned(
          child: Stack(
            alignment: Alignment(0, 0),
            children: [
              Container(
                width: 185,
                height: 180,
                decoration: BoxDecoration(
                    color: Color(0xff915FDC),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/reports.svg",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Reports",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          top: 250 + 260,
          left: 20,
        ),
        Positioned(
          child: Stack(
            alignment: Alignment(0, 0),
            children: [
              Container(
                width: 185,
                height: 240,
                decoration: BoxDecoration(
                    color: Color(0xff5FDCDC),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/attendance_leaving.svg",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "attendance - leaving",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          ),
          top: 450 ,
          right: 20,
        ),
      ],
    ));
  }
}
