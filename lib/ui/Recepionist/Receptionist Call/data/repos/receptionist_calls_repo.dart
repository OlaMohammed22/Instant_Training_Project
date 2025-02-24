import 'dart:math' as math;
import 'package:either_dart/either.dart';
import 'package:untitled36/core/utils/api_service.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/create_call_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/receptionist_call_info_model.dart';

class ReceptionistCallsRepo {
  Future<Either<Failure, List<Datum>>> displayAllCalls() async {
    Map<String, dynamic> response = await ApiService().get(
        url: 'calls',
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMzY5YzlmNjM3ZDRkNGQyMmY2MDIxMTVjM2FkOTY2NWFiODkzMjQyNTdmYTllM2UyNDFkN2VlY2M5OTZkYzU0ODA4MzQ0MjhkYTM4ODg4NzYiLCJpYXQiOjE3NDA0MTE4MTMuNTQ3MjE5LCJuYmYiOjE3NDA0MTE4MTMuNTQ3MjIxLCJleHAiOjE3NzE5NDc4MTMuNTQ2Mjg5LCJzdWIiOiI0OSIsInNjb3BlcyI6W119.qLQ4jJ_xZ1JDQHKem8ljbLe18lb4Kiut0oTOPQ0kkkD2MlOXZMwecgH2YLr_WXT7wTay1fwvQy0t4RE9-99WMR41_HBxjv1Ab5FFrnV549AuuH20A4z9VnL1eOtdxUlyPsEXYphjvG4wAnmr1fb2Q-JdFpRCCJ3cfrkDNcwRYGbIdRdpS1fTY6l8fGuwQniv3m4Vbev4b_JnQi3rGWjaDxYOztMg2EHZ-tn3zczG_Uyx1tfcriLVRLGljS93ilVhVKF_0qA1au0m8JWXU7wMWF_TnjW9R38fO4esPU7k3jyHadcYj8WzamozHn_cLluYHOS8QhvCtZFQCY3adQyGMyunpVaC2GP4o5264xz0HxOwUTXfr9Sf1f3ZhYVxtVQk-v8PP18B3Tu7CeldmmLehvQNlJmAuGJa2BCYQ1MS5-C8mGRZQOfyP6o7ghm6_sI5RlzrDis9m6q0A8vb7Aaw2JU7YKiZCdkbprVBDTphh-oHDHRxMs3N3UdEYAB3E6h52CfOaajJAJE1IklroEm-i_sTmW6l5C2UY0xC52qmYMf0hzzAmANnI1HslnyKkfEc9LjNC-DEYtbUEDNhYiryI_FHu3HSX4pYDgwOQpgrptZ8R77oCbKNuOF9ema76vrxGWFBl4Kd1Z0mB1krrYZt2QcHitmbGERLCpeWbWv_A8U");
    if (response["status"] == 1) {
      DisplayCallInfoModel data = DisplayCallInfoModel.fromJson(response);
      return Right(data.data ?? []);
    } else {
      return Left(
        HttpFailures(
          errMessage: response['message'],
        ),
      );
    }
  }

  Future<Either<Failure, List<DoctorInfoModel>>> getAllDoctors() async {
    Map<String, dynamic> response = await ApiService().get(
        url: 'doctors?type=doctor',
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMzY5YzlmNjM3ZDRkNGQyMmY2MDIxMTVjM2FkOTY2NWFiODkzMjQyNTdmYTllM2UyNDFkN2VlY2M5OTZkYzU0ODA4MzQ0MjhkYTM4ODg4NzYiLCJpYXQiOjE3NDA0MTE4MTMuNTQ3MjE5LCJuYmYiOjE3NDA0MTE4MTMuNTQ3MjIxLCJleHAiOjE3NzE5NDc4MTMuNTQ2Mjg5LCJzdWIiOiI0OSIsInNjb3BlcyI6W119.qLQ4jJ_xZ1JDQHKem8ljbLe18lb4Kiut0oTOPQ0kkkD2MlOXZMwecgH2YLr_WXT7wTay1fwvQy0t4RE9-99WMR41_HBxjv1Ab5FFrnV549AuuH20A4z9VnL1eOtdxUlyPsEXYphjvG4wAnmr1fb2Q-JdFpRCCJ3cfrkDNcwRYGbIdRdpS1fTY6l8fGuwQniv3m4Vbev4b_JnQi3rGWjaDxYOztMg2EHZ-tn3zczG_Uyx1tfcriLVRLGljS93ilVhVKF_0qA1au0m8JWXU7wMWF_TnjW9R38fO4esPU7k3jyHadcYj8WzamozHn_cLluYHOS8QhvCtZFQCY3adQyGMyunpVaC2GP4o5264xz0HxOwUTXfr9Sf1f3ZhYVxtVQk-v8PP18B3Tu7CeldmmLehvQNlJmAuGJa2BCYQ1MS5-C8mGRZQOfyP6o7ghm6_sI5RlzrDis9m6q0A8vb7Aaw2JU7YKiZCdkbprVBDTphh-oHDHRxMs3N3UdEYAB3E6h52CfOaajJAJE1IklroEm-i_sTmW6l5C2UY0xC52qmYMf0hzzAmANnI1HslnyKkfEc9LjNC-DEYtbUEDNhYiryI_FHu3HSX4pYDgwOQpgrptZ8R77oCbKNuOF9ema76vrxGWFBl4Kd1Z0mB1krrYZt2QcHitmbGERLCpeWbWv_A8U");
    if (response["status"] == 1) {
      List docList = response['data'] as List;
      List<DoctorInfoModel> finalDoctorsList = [];
      docList.forEach((doc) {
        finalDoctorsList.add(
          DoctorInfoModel(
            id: doc["id"],
            name: doc['first_name'],
            hisTitle: doc['type'],
            photo: null,
            isOnline: math.Random().nextBool(),
          ),
        );
      });
      return Right(finalDoctorsList);
    } else {
      return Left(
        HttpFailures(
          errMessage: response['message'],
        ),
      );
    }
  }

  Future<Either<Failure, String>> createNewCall(
      {required CreateCallInfoModel createCallInfoModel}) async {
    Map<String, dynamic> response = await ApiService().post(
        url: 'calls',
        body: {
          'patient_name': createCallInfoModel.patientName,
          'doctor_id': createCallInfoModel.doctorInfo.id.toString(),
          'age': createCallInfoModel.age,
          'phone': createCallInfoModel.phoneNumber,
          'description': createCallInfoModel.caseDescription,
        },
        token:
            "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMzY5YzlmNjM3ZDRkNGQyMmY2MDIxMTVjM2FkOTY2NWFiODkzMjQyNTdmYTllM2UyNDFkN2VlY2M5OTZkYzU0ODA4MzQ0MjhkYTM4ODg4NzYiLCJpYXQiOjE3NDA0MTE4MTMuNTQ3MjE5LCJuYmYiOjE3NDA0MTE4MTMuNTQ3MjIxLCJleHAiOjE3NzE5NDc4MTMuNTQ2Mjg5LCJzdWIiOiI0OSIsInNjb3BlcyI6W119.qLQ4jJ_xZ1JDQHKem8ljbLe18lb4Kiut0oTOPQ0kkkD2MlOXZMwecgH2YLr_WXT7wTay1fwvQy0t4RE9-99WMR41_HBxjv1Ab5FFrnV549AuuH20A4z9VnL1eOtdxUlyPsEXYphjvG4wAnmr1fb2Q-JdFpRCCJ3cfrkDNcwRYGbIdRdpS1fTY6l8fGuwQniv3m4Vbev4b_JnQi3rGWjaDxYOztMg2EHZ-tn3zczG_Uyx1tfcriLVRLGljS93ilVhVKF_0qA1au0m8JWXU7wMWF_TnjW9R38fO4esPU7k3jyHadcYj8WzamozHn_cLluYHOS8QhvCtZFQCY3adQyGMyunpVaC2GP4o5264xz0HxOwUTXfr9Sf1f3ZhYVxtVQk-v8PP18B3Tu7CeldmmLehvQNlJmAuGJa2BCYQ1MS5-C8mGRZQOfyP6o7ghm6_sI5RlzrDis9m6q0A8vb7Aaw2JU7YKiZCdkbprVBDTphh-oHDHRxMs3N3UdEYAB3E6h52CfOaajJAJE1IklroEm-i_sTmW6l5C2UY0xC52qmYMf0hzzAmANnI1HslnyKkfEc9LjNC-DEYtbUEDNhYiryI_FHu3HSX4pYDgwOQpgrptZ8R77oCbKNuOF9ema76vrxGWFBl4Kd1Z0mB1krrYZt2QcHitmbGERLCpeWbWv_A8U");
    if (response["status"] == 1) {
      DisplayCallInfoModel data = DisplayCallInfoModel.fromJson(response);
      return Right(data.message.toString());
    } else {
      return Left(
        HttpFailures(
          errMessage: response['message'],
        ),
      );
    }
  }
}

abstract class Failure {
  final String errMessage;

  Failure({required this.errMessage});
}

class HttpFailures extends Failure {
  HttpFailures({required super.errMessage});
}
