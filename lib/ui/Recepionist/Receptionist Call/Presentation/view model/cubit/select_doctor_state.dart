part of 'select_doctor_cubit.dart';

@immutable
 class SelectDoctorState {}

 class SelectDoctorInitial extends SelectDoctorState {}

 class SelectDoctorSuccess extends SelectDoctorState {
  final DoctorInfoModel doctor;

  SelectDoctorSuccess({required this.doctor});
}

 class SelectDoctorFailure extends SelectDoctorState {}
