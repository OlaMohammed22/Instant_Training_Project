import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';

class SendCallRquestSuccessfullyView extends StatelessWidget {
  const SendCallRquestSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(Assets.requestSuccessImage),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "The request has been Submitted successfully",
                  textAlign: TextAlign.center,
                  style: TextStyles.style16Medium.copyWith(
                    color: const Color(0xff36F38E),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            text: "Back To Home",
            width: MediaQuery.sizeOf(context).width,
            onPressed: () {
              // GoRouter.of(context).pop();
              // GoRouter.of(context).pop();
              Navigator.pop(context);
              Navigator.pop(context);
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
