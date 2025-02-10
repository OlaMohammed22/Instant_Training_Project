import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled36/core/utils/form_validations.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/Presentation/views/widgets/nurse_list_tile_items_list.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_search_text_form_field.dart';

class SelectNurseViewBody extends StatefulWidget {
  const SelectNurseViewBody({super.key});

  @override
  State<SelectNurseViewBody> createState() => _SelectNurseViewBodyState();
}

class _SelectNurseViewBodyState extends State<SelectNurseViewBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SearchTextField(
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 18,
          ),
          hint: "Search For Nurse",
          onSaved: (value) {},
          validator: (value) {
            return FormValidation.optionalField(value);
          },
        ),
        const SizedBox(
          height: 30,
        ),
        const NurseListTileItemsList(),
        CustomButton(
          text: "Select Nurse",
          width: MediaQuery.sizeOf(context).width,
          onPressed: () {
            Navigator.pop(context);
           // GoRouter.of(context).pop();
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}


