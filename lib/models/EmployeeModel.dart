//get task
class EmployeeModel {
  final int id;
  final String first_name;
  final String avatar;
  final String type;


  EmployeeModel(
      {required this.id,
        required this.type,
        required this.avatar,
        required this.first_name,

      });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) {
    return EmployeeModel(
      id: json['id'],
      first_name: json['first_name'],
      avatar: json['avatar'],
      type: json['type'],
    );
  }
}



