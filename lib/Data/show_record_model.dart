class CasesDisplay {
  final int? id;
  final String? bloodPressure;
  final String? sugarAnalysis;
  final String? note;
  final String? status;

  CasesDisplay({
    this.id,
    this.bloodPressure,
    this.sugarAnalysis,
    this.note,
    this.status,
  });

  factory CasesDisplay.fromJson(Map<String, dynamic> json) {
    return CasesDisplay(
      id: json['id'],
      bloodPressure: json['blood_pressure'],
      sugarAnalysis: json['sugar_analysis'],
      note: json['note'],
      status: json['status'],
    );
  }
}