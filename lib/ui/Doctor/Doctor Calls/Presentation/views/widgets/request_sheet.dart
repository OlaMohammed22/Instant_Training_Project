import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/assets.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/request_sheet_container.dart';
import 'package:untitled36/ui/Doctor/Medical_measurment.dart';
import 'package:untitled36/ui/Doctor/Medical_record.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';

class RequestSheet extends StatefulWidget {
  const RequestSheet({super.key});

  @override
  State<RequestSheet> createState() => _RequestSheetState();
}

class _RequestSheetState extends State<RequestSheet> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32, top: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    child: RequestSheetContainer(
                      icon: Assets.medicalRecordIcon,
                      text: "Medical Record",
                      isSelected: selectedIndex == 0,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    child: RequestSheetContainer(
                        isSelected: selectedIndex == 1,
                        icon: Assets.medicalMeasurementIcon,
                        text: "Medical Measurement"),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          CustomButton(
            text: "Request",
            width: MediaQuery.sizeOf(context).width,
            onPressed: () {
              Navigator.pop(context);
              if (selectedIndex == 0) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalRecord(),
                  ),
                );
              } else if(selectedIndex ==1){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MedicalMeasurment(),
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
