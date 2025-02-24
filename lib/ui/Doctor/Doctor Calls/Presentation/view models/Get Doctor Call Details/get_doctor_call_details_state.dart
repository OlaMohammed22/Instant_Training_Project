part of 'get_doctor_call_details_bloc.dart';

class GetDoctorCallDetailsState extends Equatable {
  const GetDoctorCallDetailsState();

  @override
  List<Object> get props => [];
}

class GetDoctorCallDetailsInitial extends GetDoctorCallDetailsState {}

class GetDoctorCallDetailsSuccess extends GetDoctorCallDetailsState {
  final Data data;

  const GetDoctorCallDetailsSuccess({required this.data});
}

class GetDoctorCallDetailsLoading extends GetDoctorCallDetailsState {}

class GetDoctorCallDetailsFailure extends GetDoctorCallDetailsState {
  final String errMessage;

  GetDoctorCallDetailsFailure({
    required this.errMessage,
  });
}
