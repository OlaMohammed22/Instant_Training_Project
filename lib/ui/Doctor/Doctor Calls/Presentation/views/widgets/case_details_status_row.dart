import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
class CaseDetailsStatusRow extends StatelessWidget {
  const CaseDetailsStatusRow({
    super.key,
    required this.title,
    required this.data,
  });
  final String title, data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyles.style14SemiBold,
        ),
        const Spacer(),
        Text(
          data,
          style: TextStyles.style14Regular,
        ),
        const SizedBox(
          width: 12,
        ),
        SvgPicture.asset(Assets.pendingIcon),
      ],
    );
  }
}