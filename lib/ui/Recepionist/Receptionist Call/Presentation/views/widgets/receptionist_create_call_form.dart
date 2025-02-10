import 'package:flutter/material.dart';
import 'package:untitled36/core/utils/form_validations.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/select_doctor_view.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/send_call_request_successfully_view.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_list_tile.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_text_form_field.dart';

class ReceptionistCreateCallForm extends StatefulWidget {
  const ReceptionistCreateCallForm({
    super.key,
  });

  @override
  State<ReceptionistCreateCallForm> createState() =>
      _ReceptionistCreateCallFormState();
}

class _ReceptionistCreateCallFormState
    extends State<ReceptionistCreateCallForm> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Patient Name",
            onSaved: (value) {},
            keyboardType: TextInputType.text,
            validator: (value) {
              return FormValidation.emptyValueValidation(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hint: "age",
            keyboardType: TextInputType.number,
            onSaved: (value) {},
            validator: (value) {
              return FormValidation.emptyValueValidation(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hint: "Phone Number",
            keyboardType: TextInputType.phone,
            onSaved: (value) {},
            validator: (value) {
              return FormValidation.phoneNumberValidation(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomListTile(
            text: "Select Doctor",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SelectDoctorView();
                  },
                ),
              );
              //context.push(AppRoutes.receptionistSelectDoctorForCreatingCall);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hint: "Case Description",
            onSaved: (value) {},
            keyboardType: TextInputType.text,
            maxLines: 5,
            validator: (value) {
              return FormValidation.emptyValueValidation(value);
            },
          ),
          const Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          CustomButton(
            text: "Send Call",
            width: MediaQuery.sizeOf(context).width,
            onPressed: () {
              // if (formKey.currentState!.validate()) {}
              // BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
              // ---------------------
              // SelectDoctorCubit.doctorInfoModel = null;
              // BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SendCallRquestSuccessfullyView();
                  },
                ),
              );
              // GoRouter.of(context)
              //     .push(AppRoutes.sendCallRquestSuccessfullyView);
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
