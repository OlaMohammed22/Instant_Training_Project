import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Data/Add_nurce_repo.dart';
import '../Data/Displaycases_repo.dart';
import '../Data/Show_details_repo.dart';
import '../Data/add_record_repo.dart';
import '../Data/makerequest_repo.dart';
import '../Data/show_record_repo.dart';
import '../repository/repository.dart';
import 'bloc_event.dart';
import 'bloc_state.dart';

class CaseBloc extends Bloc<ChangingTheTab, Selected_tab> {
  CaseBloc() : super(Selected_tab(selectedtabindex: 0)) {
    on<ChangingTheTab>((event, emit) {
      emit(state.copyWith(selectedtabindex: event.tabIndex));
    });
  }
}

class FingerprintBloc extends Bloc<FingerprintEvent, FingerprintState> {
  FingerprintBloc() : super(FingerprintInitial()) {
    on<VerifyFingerprint>(_onVerifyFingerprint);
  }

  Future<void> _onVerifyFingerprint(
      VerifyFingerprint event, Emitter<FingerprintState> emit) async {
    emit(FingerprintLoading());
    await Future.delayed(Duration(seconds: 2));
    emit(FingerprintSuccess());
  }
}

class LogicBloc extends Bloc<ChangingTheTab, Selected_tab> {
  LogicBloc() : super(Selected_tab(selectedtabindex: 0)) {
    on<ChangingTheTab>((event, emit) {
      emit(state.copyWith(selectedtabindex: event.tabIndex));
    });
  }
}

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final TaskRepository _taskRepository;

  TaskBloc(this._taskRepository) : super(TaskLoadingState()) {
    on<LoadTaskEvent>((event, emit) async {
      emit(TaskLoadingState());
      try {
        final tasks = await _taskRepository.getTasks();

        emit(TaskLoadedState(tasks));
      } catch (e) {
        emit(TaskErrorState(e.toString()));
      }
    });
  }
}

class PostTaskBloc extends Bloc<PostTaskEvent, PostTaskState> {
  final TaskRepository _taskRepository;

  PostTaskBloc(this._taskRepository) : super(PostTaskLoadingState()) {
    on<PostTaskEvent>((event, emit) async {
      emit(PostTaskLoadingState());
      try {
        print("here we are!");
        final users = await _taskRepository.postUserData(event.task);

        print(users);
        print("step2");
      } catch (e) {
        emit(PostTaskErrorState(e.toString()));
      }
    });
  }
}

class AttendanceBloc extends Bloc<AttendanceEvent, AttendanceState> {
  final TaskRepository _taskRepository;

  AttendanceBloc(this._taskRepository) : super(AttendanceLoadingState()) {
    on<AttendanceEvent>((event, emit) async {
      emit(AttendanceLoadingState());
      try {
        await _taskRepository.attendance();

        emit(AttendanceLoadedState());
      } catch (e) {
        emit(AttendanceErrorState(e.toString()));
      }
    });
  }
}

class TaskDetailsBloc extends Bloc<TaskDetailsEvent, TaskDetailsState> {
  final TaskRepository _taskRepository;

  TaskDetailsBloc(this._taskRepository) : super(TaskDetailsLoadingState()) {
    on<LoadTaskDetailsEvent>((event, emit) async {
      emit(TaskDetailsLoadingState());
      try {
        final tasks = await _taskRepository.getTaskDetails(event.task_id);

        emit(TaskDetailsLoadedState(tasks));
      } catch (e) {
        emit(TaskDetailsErrorState(e.toString()));
      }
    });
  }
}



class CaseBlocc extends Bloc<CaseEvent, CaseState> {
  final CaseRepository caseRepository;

  CaseBlocc(this.caseRepository) : super(CaseInitialState()) {
    on<FetchCasesEvent>((event, emit) async {
      emit(CaseLoadingState());
      try {
        final cases = await caseRepository.gettCases();
        emit(CaseLoadedState(cases));
      } catch (e) {
        emit(CaseErrorState(e.toString()));
      }
    });
  }
}


class ShowCaseBloc extends Bloc<CaseDetailsEvent, ShowDetailsState> {
  final CaseDetailsRepository caseRepository;

  ShowCaseBloc(this.caseRepository) : super(ShowDetailsInitialState()) {
    on<LoadCaseDetailsEvent>((event, emit) async {
      emit(ShowDetailsLoadingState());
      try {
        final my_case = await caseRepository.getCases(event.case_id);
        // Assuming cases is of type Show_details
        emit(ShowDetailsLoadedState(my_case));
      } catch (e) {
        emit(ShowCaseErrorState(e.toString()));
      }
    });
  }
}



class NurseBloc extends Bloc<NurseEvent, NurseState> {
  final ApiService apiService;
  final BuildContext context;

  NurseBloc(this.apiService, this.context) : super(NurseInitial()) {
    on<AddNurseEvent>(_onAddNurse);
  }

  Future<void> _onAddNurse(AddNurseEvent event, Emitter<NurseState> emit) async {
    emit(NurseLoading());
    try {
      await apiService.addNurse(context, event.nurse.toJson()); // Convert Nurse model to JSON
      emit(NurseSuccess("Nurse added successfully!")); // Success message

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Nurse added successfully!"), backgroundColor: Colors.green),
      );
    } catch (e) {
      emit(NurseFailure("Failed to add nurse: ${e.toString()}"));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to add nurse: ${e.toString()}"), backgroundColor: Colors.red),
      );
    }
  }
}
class AddRecordBloc extends Bloc<add_record_Event, addrecordState> {
  final ApiServicesss apiServicesss;
  final BuildContext context;

  AddRecordBloc(this.apiServicesss, this.context) : super(recordInitial()) {
    on<addrecordEvent>(_onAddRecord);
  }

  Future<void> _onAddRecord(addrecordEvent event, Emitter<addrecordState> emit) async {
    emit(recordLoading());
    try {
      await apiServicesss.addrecord(context, event.record.toJson());
      emit(recordSuccess("Record added successfully!"));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Record added successfully!"), backgroundColor: Colors.green),
      );
    } catch (e) {
      emit(recordFailure("Failed to add record: \${e.toString()}"));

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to add record: \${e.toString()}"), backgroundColor: Colors.red),
      );
    }
  }}
class MedicalRecordBloc extends Bloc<MedicalRecordEvent, MedicalRecordState> {
  final CaseRepositoryys repository;

  MedicalRecordBloc({required this.repository}) : super(MedicalRecordInitial()) {
    on<FetchMedicalRecords>(_onFetchMedicalRecords);
    on<SendMedicalRequest>(_onSendMedicalRequest);
  }

  void _onFetchMedicalRecords(
      FetchMedicalRecords event, Emitter<MedicalRecordState> emit) async {
    emit(MedicalRecordLoading());
    try {
      final recordss = await repository.gettCasess(); // Ensure gettCasess() exists
      emit(MedicalRecordLoaded(recordss: recordss));
    } catch (e) {
      emit(MedicalRecordError(message: e.toString()));
    }
  }

  void _onSendMedicalRequest(
      SendMedicalRequest event, Emitter<MedicalRecordState> emit) async {
    try {
      await ApiiService().make_request(event.context, {
        "status": event.status,
        "message": event.message,
      });
      emit(MedicalRequestSuccess());
    } catch (e) {
      emit(MedicalRecordError(message: e.toString()));
    }
  }
}






