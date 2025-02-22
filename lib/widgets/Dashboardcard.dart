import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final String backgroundSvgPath;
  final String svgIconPath;
  final VoidCallback onTap;
  final double hight;
  final double width;
   

  const DashboardCard({
    super.key,
    required this.title,
    required this.backgroundSvgPath,
    required this.svgIconPath,
    required this.onTap,
   required this.hight,
   required this.width,
    

  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SvgPicture.asset(
              backgroundSvgPath,
             width: double.infinity,
              height: double.infinity,
             //fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(svgIconPath),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                    color: Colors.white,
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
