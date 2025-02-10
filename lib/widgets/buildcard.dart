import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final String backGround;
  final String title;
  final String subtitle;
  final String iconPath;
  final double hight;
  final double width;
  final VoidCallback onTap;

  const BuildCard({
    super.key,
    required this.backGround,
    required this.iconPath,
    required this.title,
    required this.subtitle,
    required this.hight,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(.01),
      child: InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  backGround,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.contain,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(iconPath),
                    SizedBox(height: 12),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (subtitle.isNotEmpty)
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
