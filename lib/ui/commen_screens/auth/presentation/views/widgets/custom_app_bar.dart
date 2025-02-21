import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
          Text(
            title,
            style: TextStyles.style16Regular,
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
