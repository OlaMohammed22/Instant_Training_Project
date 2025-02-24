import 'package:equatable/equatable.dart';

import 'datum.dart';

class DisplayCallInfoModel extends Equatable {
  final int? status;
  final String? message;
  final List<Datum>? data;

  const DisplayCallInfoModel({this.status, this.message, this.data});

  factory DisplayCallInfoModel.fromJson(Map<String, dynamic> json) {
    return DisplayCallInfoModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [status, message, data];
}
