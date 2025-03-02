import 'dart:convert';

class CasesDisplay {
  final int id;
  final String patient_name;
  final String created_at;

  CasesDisplay({required this.id, required this.patient_name, required this.created_at});

  factory CasesDisplay.fromJson(Map<String, dynamic> json) {
    return CasesDisplay(
      id: json['id'] ,
      patient_name: json['patient_name'] ,
      created_at: json['created_at']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'patient_name': patient_name,
     'created_at':created_at
    };
  }

  /// Parses a JSON response into a `CasesDisplay` object
  static CasesDisplay fromJsonString(String responseBody) {
    return CasesDisplay.fromJson(jsonDecode(responseBody));
  }
}

class CaseData {
  final int? id;
  final String? title;
  final String? date; // Added a date field if available

  CaseData({this.id, this.title, this.date});

  factory CaseData.fromJson(Map<String, dynamic> json) {
    return CaseData(
      id: json['id'] as int?,
      title: json['title'] as String? ?? 'Unknown', // Default title if null
      date: json['date'] as String? ?? 'No Date', // Default date if null
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'date': date,
    };
  }
}
