import 'package:either_dart/either.dart';
import 'package:untitled36/core/utils/api_service.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/receptionist_call_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

class NurseCallRepo {
  Future<Either<Failure, List<Datum>>> displayAllCalls() async {
    Map<String, dynamic> response = await ApiService().get(
        url: 'calls',
        token:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYWI4YjQzZDIyZGE3N2VkZDM0NTIwNDY3MWI3M2RiZDQzNzE4OTY2ZDA4ZDAwMTUwMWM5N2QyMGU4YmNjMDZjNzQ0ZTg5OTkwMzI2YzJlNGYiLCJpYXQiOjE3NDA0MTIyMzQuMjkwOTA0LCJuYmYiOjE3NDA0MTIyMzQuMjkwOTA1LCJleHAiOjE3NzE5NDgyMzQuMjkwMDEsInN1YiI6IjgxIiwic2NvcGVzIjpbXX0.fUAFGu1Fug_nMUxoZ38IS5YQcYC7j4n2gBm25esbey0vNV9UegXa4c_wzTP6EwhLd9T1f10J2lwgpjmjPPrP2BIqpQWc8gOdRRJKVr_s5E-OOImRUolwl9PjNmJ1XoRexlITI-Kf2n2itIxc3Csln5nERF4X3q53LHyPEZVl3zE_u8MLnu-LuqZW1oR9fWZhhrz9ZbWpZ0-Fj2W6YVXT5y9BXs5GoPhyG4lhn7vXfXdlueB6mVXOpg0zZFo7RgFxLDKgsNXL81YASrk7Hhjf-976uLt8FyPOQjACCXTLxHWJ8lkP7ZwUHZLMmgynb6JQZ9xvrjl_e02Nlf-9YNmwgRHrOSyy_lDvh_AcF_4AKVsYe5KrrgqNQWAAOLr-6QHYWw3vi3sXnaQR889Rw4U8rr9zInGCMiaTkzVxVj7aQkhcwKKF3WKamqsobi1Wn9oxahTtvJIb3IuJQop6SzJkic9pgvhu40hmeKC1I5OVTq8k1-HW_bxabuoNowzw9VZT_G0jfzL38hrgWCJrgLFxtpkhBA8dImizPwAIk4WfrTn1c90lHJU_HfRCHQ94vI8891jNPEBaoQM8tcskL4bequeRFkop5oOv8nDqgFuLSMdsLyWQQoBYM7U4VO1PmZH8IfgxftgBXxPzoQVchBu9Oc5yPY2ZA6_nHyR78vb1KYI');
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
}
