import 'package:equatable/equatable.dart';

class Datum extends Equatable {
  final int? id;
  final String? patientName;
  final String? createdAt;
  final String? status;

  const Datum({this.id, this.patientName, this.createdAt, this.status});

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        patientName: json['patient_name'] as String?,
        createdAt: json['created_at'] as String?,
        status: json['status'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'patient_name': patientName,
        'created_at': createdAt,
        'status': status,
      };

  @override
  List<Object?> get props => [id, patientName, createdAt, status];
}
