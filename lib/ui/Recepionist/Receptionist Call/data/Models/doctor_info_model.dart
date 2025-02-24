class DoctorInfoModel {
  final int id;
  final String name, hisTitle;
  final String? photo;
  final bool isOnline;

  const DoctorInfoModel({
    required this.id,
    required this.name,
    required this.hisTitle,
    required this.photo,
    required this.isOnline,
  });
}
