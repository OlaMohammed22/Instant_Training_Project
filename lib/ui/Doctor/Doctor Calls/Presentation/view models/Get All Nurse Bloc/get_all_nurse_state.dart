import 'package:equatable/equatable.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class GetAllNurseState extends Equatable {
  const GetAllNurseState();

  @override
  List<Object> get props => [];
}

class GetAllNurseInitial extends GetAllNurseState {}

class GetAllNurseLoading extends GetAllNurseState {}

class GetAllNurseSuccess extends GetAllNurseState {
  final List<DoctorInfoModel> data;

  GetAllNurseSuccess({required this.data});
}

class GetAllNurseFailure extends GetAllNurseState {
  final String errMessage;

  GetAllNurseFailure({required this.errMessage});
}
