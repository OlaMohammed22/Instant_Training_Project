import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/core/utils/form_validations.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Create%20Bloc/create_call_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Get%20All%20Doctors%20Bloc/get_all_doctors_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/cubit/select_doctor_cubit.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/select_doctor_view.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_button.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_list_tile.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/custom_text_form_field.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/create_call_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

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
  GlobalKey<FormFieldState> selectDoctorFormKey = GlobalKey<FormFieldState>();

  late String patientName, caseDescription;
  late String age;
  late String phoneNumber;
  late DoctorInfoModel doctorInfoModel;
  @override
  void initState() {
    SelectDoctorCubit.doctorInfoModel = null;
    BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hint: "Patient Name",
            onSaved: (value) {
              patientName = value!;
            },
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
            onSaved: (value) {
              age = value!;
            },
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
            onSaved: (value) {
              phoneNumber = value!;
            },
            validator: (value) {
              return FormValidation.phoneNumberValidation(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomListTile(
            selectDoctorFormKey: selectDoctorFormKey,
            text: "Select Doctor",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => GetAllDoctorsBloc(),
                      child: SelectDoctorView(),
                    );
                  },
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            hint: "Case Description",
            onSaved: (value) {
              caseDescription = value!;
            },
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
              if (formKey.currentState!.validate() &&
                  selectDoctorFormKey.currentState!.validate()) {
                formKey.currentState!.save();
                doctorInfoModel = SelectDoctorCubit.doctorInfoModel!;
                BlocProvider.of<CreateCallBloc>(context).add(
                  CreateCallEvent(
                    CreateCallInfoModel(
                        patientName: patientName,
                        caseDescription: caseDescription,
                        age: age,
                        phoneNumber: phoneNumber,
                        doctorInfo: SelectDoctorCubit.doctorInfoModel!),
                  ),
                );
              }
              BlocProvider.of<SelectDoctorCubit>(context).selectDoctor();

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
