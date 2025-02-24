part of 'get_all_doctors_bloc.dart';

class GetAllDoctorsState extends Equatable {
  const GetAllDoctorsState();

  @override
  List<Object> get props => [];
}

class GetAllDoctorsInitial extends GetAllDoctorsState {}

class GetAllDoctorsLoading extends GetAllDoctorsState {}

class GetAllDoctorsSuccess extends GetAllDoctorsState {
  final List<DoctorInfoModel> data;

  GetAllDoctorsSuccess({required this.data});
}

class GetAllDoctorsFailure extends GetAllDoctorsState {
  final String errMessage;

  GetAllDoctorsFailure({required this.errMessage});
}
