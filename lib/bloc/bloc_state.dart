import 'package:equatable/equatable.dart';

import '../Data/Display_cases_model.dart';
import '../Data/Show_details_model.dart';
import '../models/Task_model.dart';

class Selected_tab {
  final int selectedtabindex;

  Selected_tab({required this.selectedtabindex});

  Selected_tab copyWith({int? selectedtabindex}) {
    return Selected_tab(selectedtabindex: selectedtabindex ?? this.selectedtabindex);
  }
}


abstract class FingerprintState extends Equatable {
  const FingerprintState();

  @override
  List<Object> get props => [];
}

class FingerprintInitial extends FingerprintState {}

class FingerprintLoading extends FingerprintState {}

class FingerprintSuccess extends FingerprintState {}

class FingerprintFailure extends FingerprintState {}




abstract class TaskState extends Equatable{}

class TaskLoadingState extends TaskState {
  @override
  List<Object?> get props => [];
}

class TaskLoadedState extends TaskState {
  TaskLoadedState(this.tasks);
  final List<TaskModel> tasks;

  @override
  List<Object?> get props => [];

}

class TaskErrorState extends TaskState {
  TaskErrorState(this.error);
  final String error;
  @override
  List<Object?> get props => [error];
}




abstract class PostTaskState {}

class TaskInitialState extends PostTaskState {}

class PostTaskLoadingState extends PostTaskState {}

class TaskSuccessState extends PostTaskState {}

class PostTaskErrorState extends PostTaskState {
  final String errorMessage;

  PostTaskErrorState(this.errorMessage);
}





abstract class AttendanceState {}

class AttendanceLoadingState extends AttendanceState {

}

class AttendanceLoadedState extends AttendanceState {
  AttendanceLoadedState();



}

class AttendanceErrorState extends AttendanceState {
  AttendanceErrorState(this.error);
  final String error;

}




abstract class TaskDetailsState {}

class TaskDetailsLoadingState extends TaskDetailsState {

}

class TaskDetailsLoadedState extends TaskDetailsState {
  TaskDetailsLoadedState(this.task);
  final TaskDetails task;



}

class TaskDetailsErrorState extends TaskDetailsState {
  TaskDetailsErrorState(this.error);
  final String error;

}




abstract class CaseState {}

class CaseInitialState extends CaseState {}

class CaseLoadingState extends CaseState {}

class CaseLoadedState extends CaseState {
  final List<CasesDisplay> cases;
  CaseLoadedState(this.cases);
}

class CaseErrorState extends CaseState {
  final String error;
  CaseErrorState(this.error);
}




abstract class ShowDetailsState {}

class ShowDetailsInitialState extends ShowDetailsState {

}
class  ShowDetailsLoadingState extends ShowDetailsState {

}
class ShowDetailsLoadedState extends ShowDetailsState {
  ShowDetailsLoadedState(this.casedetails);
  final Show_details casedetails;



}

class ShowCaseErrorState extends ShowDetailsState {
  ShowCaseErrorState(this.error);
  final String error;

}










abstract class UpdateState {}

class UpdateInitial extends UpdateState {}

class UpdateLoading extends UpdateState {}

class UpdateSuccess extends UpdateState {
  final String message;
  UpdateSuccess(this.message);
}

class UpdateFailure extends UpdateState {
  final String error;
  UpdateFailure(this.error);
}


abstract class NurseState extends Equatable {
  @override
  List<Object> get props => [];
}

class NurseInitial extends NurseState {}

class NurseLoading extends NurseState {}

class NurseSuccess extends NurseState {
  final String message;

  NurseSuccess(this.message);

  @override
  List<Object> get props => [message];
}

class NurseFailure extends NurseState {
  final String error;

  NurseFailure(this.error);

  @override
  List<Object> get props => [error];
}

abstract class RequestState extends Equatable {
  @override
  List<Object> get props => [];
}

class RequestInitial extends RequestState {}

class RequestLoading extends RequestState {}

class RequestSuccess extends RequestState {
  final String message;

  RequestSuccess(this.message);

  @override
  List<Object> get props => [message];
}

class RequestFailure extends RequestState {
  final String error;

  RequestFailure(this.error);

  @override
  List<Object> get props => [error];
}

abstract class addrecordState extends Equatable {
  @override
  List<Object> get props => [];
}

class recordInitial extends addrecordState {}

class recordLoading extends addrecordState {}

class recordSuccess extends addrecordState {
  final String message;
  recordSuccess(this.message);

  @override
  List<Object> get props => [message];
}

class recordFailure extends addrecordState {
  final String error;
  recordFailure(this.error);

  @override
  List<Object> get props => [error];
}


abstract class MedicalRecordState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MedicalRecordInitial extends MedicalRecordState {}

class MedicalRecordLoading extends MedicalRecordState {}

class MedicalRecordLoaded extends MedicalRecordState {
  final CasesDisplay recordss;

  MedicalRecordLoaded({required this.recordss});

  @override
  List<Object?> get props => [recordss];
}

class MedicalRecordError extends MedicalRecordState {
  final String message;

  MedicalRecordError({required this.message});

  @override
  List<Object?> get props => [message];
}

class MedicalRequestSuccess extends MedicalRecordState {}

