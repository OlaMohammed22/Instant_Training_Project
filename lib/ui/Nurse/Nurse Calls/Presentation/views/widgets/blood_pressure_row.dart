import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/text_styles.dart';
import 'package:untitled36/ui/Nurse/Nurse%20Calls/Presentation/views/widgets/custom_drop_down_button.dart';

class BloodPressureRow extends StatefulWidget {
  const BloodPressureRow({
    super.key,
  });

  @override
  State<BloodPressureRow> createState() => _BloodPressureRowState();
}

class _BloodPressureRowState extends State<BloodPressureRow> {
  late TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController(text: "Add Value");
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: CustomDropDownButton(
              dropDownList: const [
                "< 120",
                "120 -129",
                "130 -139",
                "140+",
                "180+ ",
              ],
              hintText: 'Blood pressure',
              validator: (value) {
                return null;
              },
              onChanged: (value) {
                setState(() {
                  textEditingController.text = value ?? "Add Value";
                });
              },
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE1E1E1),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    textEditingController.text,
                    style: TextStyles.style16Medium.copyWith(
                      color: textEditingController.text == "Add Value"
                          ? const Color(0xff929292)
                          : null,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
