import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';

class CreateCallInfoModel {
  final String patientName, caseDescription;
  final String age;
  final String phoneNumber;
  final DoctorInfoModel doctorInfo;

  const CreateCallInfoModel({
    required this.patientName,
    required this.caseDescription,
    required this.age,
    required this.phoneNumber,
    required this.doctorInfo,
  });
}
