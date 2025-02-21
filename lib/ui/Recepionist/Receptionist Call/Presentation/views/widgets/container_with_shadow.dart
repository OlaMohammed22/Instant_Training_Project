import 'package:flutter/material.dart';

class ContainerWithShadow extends StatelessWidget {
  const ContainerWithShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Color(0xffE5E5E5),
              blurRadius: 10,
              spreadRadius: -5)
        ],
      ),
    );
  }
}