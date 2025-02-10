import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

part 'select_doctor_state.dart';

class SelectDoctorCubit extends Cubit<SelectDoctorState> {
  SelectDoctorCubit() : super(SelectDoctorInitial());
  static DoctorInfoModel? doctorInfoModel;
  selectDoctor() {
    doctorInfoModel != null
        ? emit(SelectDoctorSuccess(doctor: doctorInfoModel!))
        : emit(SelectDoctorFailure());
  }
}
