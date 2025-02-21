import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_row.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/case_details_status_row.dart';

class CaseTabContentInfo extends StatelessWidget {
  const CaseTabContentInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CaseDetailsRow(
          title: "Patient Name",
          data: "Ebrahem Khaled",
        ),
        const SizedBox(
          height: 16,
        ),
        const CaseDetailsRow(
          title: "Age",
          data: "24 years",
        ),
        const SizedBox(
          height: 16,
        ),
        const CaseDetailsRow(
          title: "Phone Number",
          data: "254110241423",
        ),
        const SizedBox(
          height: 16,
        ),
        const CaseDetailsRow(
          title: "Date",
          data: "24 . 04 . 2021",
        ),
        const SizedBox(
          height: 16,
        ),
        const CaseDetailsRow(
          title: "Doctor",
          data: "Salma Ahmed",
        ),
        const SizedBox(
          height: 16,
        ),
        const CaseDetailsRow(
          title: "Nurse",
          data: "Ali islam",
        ),
        const SizedBox(
          height: 16,
        ),
        const CaseDetailsStatusRow(
          title: "Status",
          data: "Process",
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Case Description",
          style: TextStyles.style14SemiBold,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's",
          style: TextStyles.style14Regular,
        ),
      ],
    );
  }
}
