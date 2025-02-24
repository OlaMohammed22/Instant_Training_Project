import 'dart:math' as math;
import 'package:either_dart/either.dart';
import 'package:untitled36/core/utils/api_service.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/models/doctor_call_details_info_model/data.dart';
import 'package:untitled36/ui/Doctor/Doctor%20Calls/data/models/doctor_call_details_info_model/doctor_call_details_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/doctor_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/receptionist_call_info_model.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/repos/receptionist_calls_repo.dart';

class DoctorCallRepo {
  Future<Either<Failure, List<Datum>>> displayAllCalls() async {
    Map<String, dynamic> response = await ApiService().get(
        url: 'calls',
        token:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDk0ZjM2MDVjZmMwZmM5YzdjNTg1MTQ2NGMzOWI2ZTA1MDRkZDMzMDVjYTJlOTM2MmUxNTcwYTlkOGY1ZGNhNDM4NDJjZjA5NDI4OGIzOWUiLCJpYXQiOjE3NDA0MTE5ODAuNTA4MzIxLCJuYmYiOjE3NDA0MTE5ODAuNTA4MzIzLCJleHAiOjE3NzE5NDc5ODAuNTA3MjQsInN1YiI6IjcyIiwic2NvcGVzIjpbXX0.lmdzHK6je9ug4B8bDA50Q7DI_mrbq0sg_oIOe9xeFpzT2g_ljehWayQ-A1eEAy0cTbmzX33h0MGPtQvmXcS1nVL6nXSgLXsqKvy05sY8v85hpYJ3CXFwN6DjYdgk0TCoEKeH9W1b4P3qj6XXmHaKpFt7xNlXdsQtdSTQy9qYipxDe3v5bdhR27Mp5E3kFWssYO1JnTtj3bmyKC6umLeVAlWBeB79Vj1LVSb21ezoUTWAK62ZnO5hWkf_EW88DYZncSR_cWLRfWsy48gsc9c6fWno_tjSEOolQp9_Q73wgKOeVW68cX9gRHofoqfGgp3TJSheFwDNFimRzC11cigDqouuUUBsK3EUDv_Uqacfu836c4NIPc6nf1p9AYHUAYpN3lFAK8IN1k90OFQ-ubaLPKvabKOGYURXT8mBsd95g7Av8Quo3KUzy47o2DAA-D8TP_R7sy8gao2_R2XCKQyyONgV_9ya_TfgDoqKZ0ql_OAuYcwS5eKA_cjsKt3wLLE9RiQ_nX8AP76PWVdAniQImsjCJK-QchybiUcnPEBa2pBs3GYG-V05u3ac1JPIYmOGoUvXjog8r_0CFWL3dOgI7i2F8q9bPuUvr_4tRxdglEvzC2Ac3SXmx48QN5QYaYV1osZuS4AyFCAKV9TsAEK78EVJNnACtS9Sh8Bj1DK4dvU');
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

  Future<Either<Failure, List<DoctorInfoModel>>> getAllNurses() async {
    Map<String, dynamic> response = await ApiService().get(
        url: 'doctors?type=nurse',
        token:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDk0ZjM2MDVjZmMwZmM5YzdjNTg1MTQ2NGMzOWI2ZTA1MDRkZDMzMDVjYTJlOTM2MmUxNTcwYTlkOGY1ZGNhNDM4NDJjZjA5NDI4OGIzOWUiLCJpYXQiOjE3NDA0MTE5ODAuNTA4MzIxLCJuYmYiOjE3NDA0MTE5ODAuNTA4MzIzLCJleHAiOjE3NzE5NDc5ODAuNTA3MjQsInN1YiI6IjcyIiwic2NvcGVzIjpbXX0.lmdzHK6je9ug4B8bDA50Q7DI_mrbq0sg_oIOe9xeFpzT2g_ljehWayQ-A1eEAy0cTbmzX33h0MGPtQvmXcS1nVL6nXSgLXsqKvy05sY8v85hpYJ3CXFwN6DjYdgk0TCoEKeH9W1b4P3qj6XXmHaKpFt7xNlXdsQtdSTQy9qYipxDe3v5bdhR27Mp5E3kFWssYO1JnTtj3bmyKC6umLeVAlWBeB79Vj1LVSb21ezoUTWAK62ZnO5hWkf_EW88DYZncSR_cWLRfWsy48gsc9c6fWno_tjSEOolQp9_Q73wgKOeVW68cX9gRHofoqfGgp3TJSheFwDNFimRzC11cigDqouuUUBsK3EUDv_Uqacfu836c4NIPc6nf1p9AYHUAYpN3lFAK8IN1k90OFQ-ubaLPKvabKOGYURXT8mBsd95g7Av8Quo3KUzy47o2DAA-D8TP_R7sy8gao2_R2XCKQyyONgV_9ya_TfgDoqKZ0ql_OAuYcwS5eKA_cjsKt3wLLE9RiQ_nX8AP76PWVdAniQImsjCJK-QchybiUcnPEBa2pBs3GYG-V05u3ac1JPIYmOGoUvXjog8r_0CFWL3dOgI7i2F8q9bPuUvr_4tRxdglEvzC2Ac3SXmx48QN5QYaYV1osZuS4AyFCAKV9TsAEK78EVJNnACtS9Sh8Bj1DK4dvU');
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

  Future<Either<Failure, Data>> displayCallDetails(
      {required String callID}) async {
    Map<String, dynamic> response = await ApiService().get(
        url: 'calls/${callID}',
        token:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDk0ZjM2MDVjZmMwZmM5YzdjNTg1MTQ2NGMzOWI2ZTA1MDRkZDMzMDVjYTJlOTM2MmUxNTcwYTlkOGY1ZGNhNDM4NDJjZjA5NDI4OGIzOWUiLCJpYXQiOjE3NDA0MTE5ODAuNTA4MzIxLCJuYmYiOjE3NDA0MTE5ODAuNTA4MzIzLCJleHAiOjE3NzE5NDc5ODAuNTA3MjQsInN1YiI6IjcyIiwic2NvcGVzIjpbXX0.lmdzHK6je9ug4B8bDA50Q7DI_mrbq0sg_oIOe9xeFpzT2g_ljehWayQ-A1eEAy0cTbmzX33h0MGPtQvmXcS1nVL6nXSgLXsqKvy05sY8v85hpYJ3CXFwN6DjYdgk0TCoEKeH9W1b4P3qj6XXmHaKpFt7xNlXdsQtdSTQy9qYipxDe3v5bdhR27Mp5E3kFWssYO1JnTtj3bmyKC6umLeVAlWBeB79Vj1LVSb21ezoUTWAK62ZnO5hWkf_EW88DYZncSR_cWLRfWsy48gsc9c6fWno_tjSEOolQp9_Q73wgKOeVW68cX9gRHofoqfGgp3TJSheFwDNFimRzC11cigDqouuUUBsK3EUDv_Uqacfu836c4NIPc6nf1p9AYHUAYpN3lFAK8IN1k90OFQ-ubaLPKvabKOGYURXT8mBsd95g7Av8Quo3KUzy47o2DAA-D8TP_R7sy8gao2_R2XCKQyyONgV_9ya_TfgDoqKZ0ql_OAuYcwS5eKA_cjsKt3wLLE9RiQ_nX8AP76PWVdAniQImsjCJK-QchybiUcnPEBa2pBs3GYG-V05u3ac1JPIYmOGoUvXjog8r_0CFWL3dOgI7i2F8q9bPuUvr_4tRxdglEvzC2Ac3SXmx48QN5QYaYV1osZuS4AyFCAKV9TsAEK78EVJNnACtS9Sh8Bj1DK4dvU');
    if (response["status"] == 1) {
      DoctorCallDetailsInfoModel data =
          DoctorCallDetailsInfoModel.fromJson(response);
      return Right(data.data!);
    } else {
      return Left(
        HttpFailures(
          errMessage: response['message'],
        ),
      );
    }
  }

  Future<Either<Failure, String>> acceptCall({required String callID}) async {
    Map<String, dynamic> response = await ApiService().put(
        url: 'https://hospital.elhossiny.net/api/v1/calls-accept/${callID}',
        body: {
          'status': 'accept',
        },
        token:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDk0ZjM2MDVjZmMwZmM5YzdjNTg1MTQ2NGMzOWI2ZTA1MDRkZDMzMDVjYTJlOTM2MmUxNTcwYTlkOGY1ZGNhNDM4NDJjZjA5NDI4OGIzOWUiLCJpYXQiOjE3NDA0MTE5ODAuNTA4MzIxLCJuYmYiOjE3NDA0MTE5ODAuNTA4MzIzLCJleHAiOjE3NzE5NDc5ODAuNTA3MjQsInN1YiI6IjcyIiwic2NvcGVzIjpbXX0.lmdzHK6je9ug4B8bDA50Q7DI_mrbq0sg_oIOe9xeFpzT2g_ljehWayQ-A1eEAy0cTbmzX33h0MGPtQvmXcS1nVL6nXSgLXsqKvy05sY8v85hpYJ3CXFwN6DjYdgk0TCoEKeH9W1b4P3qj6XXmHaKpFt7xNlXdsQtdSTQy9qYipxDe3v5bdhR27Mp5E3kFWssYO1JnTtj3bmyKC6umLeVAlWBeB79Vj1LVSb21ezoUTWAK62ZnO5hWkf_EW88DYZncSR_cWLRfWsy48gsc9c6fWno_tjSEOolQp9_Q73wgKOeVW68cX9gRHofoqfGgp3TJSheFwDNFimRzC11cigDqouuUUBsK3EUDv_Uqacfu836c4NIPc6nf1p9AYHUAYpN3lFAK8IN1k90OFQ-ubaLPKvabKOGYURXT8mBsd95g7Av8Quo3KUzy47o2DAA-D8TP_R7sy8gao2_R2XCKQyyONgV_9ya_TfgDoqKZ0ql_OAuYcwS5eKA_cjsKt3wLLE9RiQ_nX8AP76PWVdAniQImsjCJK-QchybiUcnPEBa2pBs3GYG-V05u3ac1JPIYmOGoUvXjog8r_0CFWL3dOgI7i2F8q9bPuUvr_4tRxdglEvzC2Ac3SXmx48QN5QYaYV1osZuS4AyFCAKV9TsAEK78EVJNnACtS9Sh8Bj1DK4dvU');
    if (response["status"] == 1) {
      DoctorCallDetailsInfoModel data =
          DoctorCallDetailsInfoModel.fromJson(response);
      return Right(data.message!);
    } else {
      return Left(
        HttpFailures(
          errMessage: response['message'],
        ),
      );
    }
  }

  Future<Either<Failure, String>> rejectCall({required String callID}) async {
    Map<String, dynamic> response = await ApiService().put(
        url: 'https://hospital.elhossiny.net/api/v1/calls-accept/${callID}',
        body: {
          "status": 'reject',
        },
        token:
            'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZDk0ZjM2MDVjZmMwZmM5YzdjNTg1MTQ2NGMzOWI2ZTA1MDRkZDMzMDVjYTJlOTM2MmUxNTcwYTlkOGY1ZGNhNDM4NDJjZjA5NDI4OGIzOWUiLCJpYXQiOjE3NDA0MTE5ODAuNTA4MzIxLCJuYmYiOjE3NDA0MTE5ODAuNTA4MzIzLCJleHAiOjE3NzE5NDc5ODAuNTA3MjQsInN1YiI6IjcyIiwic2NvcGVzIjpbXX0.lmdzHK6je9ug4B8bDA50Q7DI_mrbq0sg_oIOe9xeFpzT2g_ljehWayQ-A1eEAy0cTbmzX33h0MGPtQvmXcS1nVL6nXSgLXsqKvy05sY8v85hpYJ3CXFwN6DjYdgk0TCoEKeH9W1b4P3qj6XXmHaKpFt7xNlXdsQtdSTQy9qYipxDe3v5bdhR27Mp5E3kFWssYO1JnTtj3bmyKC6umLeVAlWBeB79Vj1LVSb21ezoUTWAK62ZnO5hWkf_EW88DYZncSR_cWLRfWsy48gsc9c6fWno_tjSEOolQp9_Q73wgKOeVW68cX9gRHofoqfGgp3TJSheFwDNFimRzC11cigDqouuUUBsK3EUDv_Uqacfu836c4NIPc6nf1p9AYHUAYpN3lFAK8IN1k90OFQ-ubaLPKvabKOGYURXT8mBsd95g7Av8Quo3KUzy47o2DAA-D8TP_R7sy8gao2_R2XCKQyyONgV_9ya_TfgDoqKZ0ql_OAuYcwS5eKA_cjsKt3wLLE9RiQ_nX8AP76PWVdAniQImsjCJK-QchybiUcnPEBa2pBs3GYG-V05u3ac1JPIYmOGoUvXjog8r_0CFWL3dOgI7i2F8q9bPuUvr_4tRxdglEvzC2Ac3SXmx48QN5QYaYV1osZuS4AyFCAKV9TsAEK78EVJNnACtS9Sh8Bj1DK4dvU');
    if (response["status"] == 1) {
      DoctorCallDetailsInfoModel data =
          DoctorCallDetailsInfoModel.fromJson(response);
      return Right(data.message!);
    } else {
      return Left(
        HttpFailures(
          errMessage: response['message'],
        ),
      );
    }
  }
}
