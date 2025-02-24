import 'package:equatable/equatable.dart';

class Data extends Equatable {
  final int? id;
  final String? patientName;
  final String? createdAt;
  final String? doctorId;
  final int? docId;
  final String? nurseId;
  final String? analysisId;
  final String? status;
  final String? caseStatus;
  final String? age;
  final String? phone;
  final String? description;
  final String? bloodPressure;
  final String? sugarAnalysis;
  final String? tempreture;
  final String? fluidBalance;
  final String? respiratoryRate;
  final String? heartRate;
  final String? measurementNote;
  final String? image;
  final String? medicalRecordNote;

  const Data({
    this.id,
    this.patientName,
    this.createdAt,
    this.doctorId,
    this.docId,
    this.nurseId,
    this.analysisId,
    this.status,
    this.caseStatus,
    this.age,
    this.phone,
    this.description,
    this.bloodPressure,
    this.sugarAnalysis,
    this.tempreture,
    this.fluidBalance,
    this.respiratoryRate,
    this.heartRate,
    this.measurementNote,
    this.image,
    this.medicalRecordNote,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as int?,
        patientName: json['patient_name'] as String?,
        createdAt: json['created_at'] as String?,
        doctorId: json['doctor_id'] as String?,
        docId: json['doc_id'] as int?,
        nurseId: json['nurse_id'] as String?,
        analysisId: json['analysis_id'] as String?,
        status: json['status'] as String?,
        caseStatus: json['case_status'] as String?,
        age: json['age'] as String?,
        phone: json['phone'] as String?,
        description: json['description'] as String?,
        bloodPressure: json['blood_pressure'] as String?,
        sugarAnalysis: json['sugar_analysis'] as String?,
        tempreture: json['tempreture'] as String?,
        fluidBalance: json['fluid_balance'] as String?,
        respiratoryRate: json['respiratory_rate'] as String?,
        heartRate: json['heart_rate'] as String?,
        measurementNote: json['measurement_note'] as String?,
        image: json['image'] as String?,
        medicalRecordNote: json['medical_record_note'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'patient_name': patientName,
        'created_at': createdAt,
        'doctor_id': doctorId,
        'doc_id': docId,
        'nurse_id': nurseId,
        'analysis_id': analysisId,
        'status': status,
        'case_status': caseStatus,
        'age': age,
        'phone': phone,
        'description': description,
        'blood_pressure': bloodPressure,
        'sugar_analysis': sugarAnalysis,
        'tempreture': tempreture,
        'fluid_balance': fluidBalance,
        'respiratory_rate': respiratoryRate,
        'heart_rate': heartRate,
        'measurement_note': measurementNote,
        'image': image,
        'medical_record_note': medicalRecordNote,
      };

  @override
  List<Object?> get props {
    return [
      id,
      patientName,
      createdAt,
      doctorId,
      docId,
      nurseId,
      analysisId,
      status,
      caseStatus,
      age,
      phone,
      description,
      bloodPressure,
      sugarAnalysis,
      tempreture,
      fluidBalance,
      respiratoryRate,
      heartRate,
      measurementNote,
      image,
      medicalRecordNote,
    ];
  }
}
