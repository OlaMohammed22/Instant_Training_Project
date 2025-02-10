import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled36/core/utils/app_colors.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/doctor_call_actions_buttons.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/nurse_case_details.dart';

class NurseCallViewBody extends StatelessWidget {
  const NurseCallViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return InkWell(
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NurseCaseDetails(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: Color(0xffE5E5E5),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(Assets.personIcon),
                          const SizedBox(
                            width: 11,
                          ),
                          const Text(
                            "Ebrahem Khaled",
                            style: TextStyles.style14Regular,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(4)),
                              padding: EdgeInsets.all(4),
                              child: Icon(
                                FontAwesomeIcons.stethoscope,
                                size: 12,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 11,
                          ),
                          const Text("Dr. Salma Ali"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Assets.calenderIcon),
                          const SizedBox(
                            width: 11,
                          ),
                          const Text("24 . 04 . 2021"),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const DoctorCallActionsButtons()
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
