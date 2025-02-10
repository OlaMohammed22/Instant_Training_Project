import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled36/core/utils/form_validations.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/cubit/select_doctor_cubit.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_list_tile_items_list.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/doctor_search_text_form_field.dart';

class SelectDoctorViewBody extends StatefulWidget {
  const SelectDoctorViewBody({super.key});

  @override
  State<SelectDoctorViewBody> createState() => _SelectDoctorViewBodyState();
}

class _SelectDoctorViewBodyState extends State<SelectDoctorViewBody> {
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
          hint: "Search For Doctor",
          onSaved: (value) {},
          validator: (value) {
            return FormValidation.optionalField(value);
          },
        ),
        const SizedBox(
          height: 30,
        ),
        const DoctorListTileItemsList(),
        CustomButton(
          text: "Select Doctor",
          width: MediaQuery.sizeOf(context).width,
          onPressed: () {
            BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
         //   GoRouter.of(context).pop();
         Navigator.pop(context);
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
