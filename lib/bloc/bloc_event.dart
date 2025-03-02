import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import '../Data/Add_nursemodel.dart';
import '../Data/Makerequest_model.dart';
import '../models/Task_model.dart';

abstract class Bloc_event {}

class ChangingTheTab extends Bloc_event {
  final int tabIndex;

  ChangingTheTab(this.tabIndex);
}

abstract class FingerprintEvent extends Equatable {
  const FingerprintEvent();

  @override
  List<Object> get props => [];
}

class VerifyFingerprint extends FingerprintEvent {}

abstract class TaskEvent extends Equatable {
  const TaskEvent();
}

class LoadTaskEvent extends TaskEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

abstract class TaskPostEvent {}

class PostTaskEvent extends TaskPostEvent {
  final Task task;

  PostTaskEvent(this.task);
}

abstract class AttendanceEvent {
  const AttendanceEvent();
}

class LoadAttendanceEvent extends AttendanceEvent {}

abstract class TaskDetailsEvent {
  const TaskDetailsEvent();
}

class LoadTaskDetailsEvent extends TaskDetailsEvent {
  final int task_id;

  LoadTaskDetailsEvent(this.task_id);
}




abstract class CaseEvent {}

class FetchCasesEvent extends CaseEvent {}


abstract class ShowCaseEvent {}

class ShowCasesEvent extends ShowCaseEvent {}


abstract class NurseEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddNurseEvent extends NurseEvent {
  final Nurse nurse;

  AddNurseEvent(this.nurse);

  @override
  List<Object> get props => [nurse];
}
abstract class RequestEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class makerequestEvent extends NurseEvent {
  final Request request;

  makerequestEvent(this.request);

  @override
  List<Object> get props => [request];
}
abstract class add_record_Event extends Equatable {
  @override
  List<Object> get props => [];
}

class addrecordEvent extends add_record_Event {
  final Nurse record;
  addrecordEvent(this.record);

  @override
  List<Object> get props => [record];
}



abstract class MedicalRecordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchMedicalRecords extends MedicalRecordEvent {}

class SendMedicalRequest extends MedicalRecordEvent {
  final String status;
  final String message;
  final BuildContext context;

  SendMedicalRequest({
    required this.status,
    required this.message,
    required this.context,
  });

  @override
  List<Object?> get props => [status, message, context];
}




abstract class CaseDetailsEvent {
  const CaseDetailsEvent();
}

class LoadCaseDetailsEvent extends CaseDetailsEvent {
  final int case_id;

  LoadCaseDetailsEvent(this.case_id);
}
