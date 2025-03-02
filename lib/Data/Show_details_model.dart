
class Show_details {
  final int status;
  final String message;

  final Data data;


  Show_details(
      {required this.status,
        required this.message,
        required this.data,
      });

  factory Show_details.fromJson(Map<String, dynamic> json) {

    return Show_details(
      status: json['status'],
      message: json['message'],
      data:  Data.fromJson(json['data']),



    );


  }
}

class Data {
  final int id;
  final String patient_name;
  final  String age;
  final  String phone;
  final String doctorId;
  final  String nurseId;
  final String status;
  final String description;
  final String createdAt;
  final String blood_pressure;
  final String sugar_analysis;


  Data({
    required this.id,
    required this.status,
    required this.phone,
    required this.patient_name,
    required this.age,
    required this.description,
    required this.doctorId,
    required this.nurseId,
    required this.createdAt,
    required this.blood_pressure,
    required this.sugar_analysis

  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id']  ,
      status: json['status'],
      phone: json['phone'],
      description: json['description'],
      nurseId: json['nurse_id'] ?? "",
      patient_name: json['patient_name'],
      age: json['age'],
      doctorId: json['doctor_id'],
        createdAt:json['created_at'],
        blood_pressure:json['blood_pressure'],
        sugar_analysis:json['sugar_analysis']
    );
  }
}

