import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';

class CallActionButton extends StatelessWidget {
  const CallActionButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onPressed,
    required this.icon,
    this.size,
  });
  final String text;
  final Size? size;
  final Color backgroundColor;
  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: size ?? const Size(98, 40),
        padding: EdgeInsets.zero,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: backgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            text,
            style: TextStyles.style14Regular.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
