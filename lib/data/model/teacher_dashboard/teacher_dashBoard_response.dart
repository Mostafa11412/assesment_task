import 'package:assesment_task/data/model/teacher_dashboard/teacher_dashbaord_model.dart';

class TeacherDashBoardResponse {
  TeacherDashBoardModel? teacher;
  dynamic targetUrl;
  bool? success;
  dynamic error;
  bool? unAuthorizedRequest;
  bool? abp;

  TeacherDashBoardResponse(
      {this.teacher,
      this.targetUrl,
      this.success,
      this.error,
      this.unAuthorizedRequest,
      this.abp});

  TeacherDashBoardResponse.fromJson(Map<String, dynamic> json) {
    if (json["result"] is Map) {
      teacher = json["result"] == null
          ? null
          : TeacherDashBoardModel.fromJson(json["result"]);
    }
    targetUrl = json["targetUrl"];
    if (json["success"] is bool) {
      success = json["success"];
    }
    error = json["error"];
    if (json["unAuthorizedRequest"] is bool) {
      unAuthorizedRequest = json["unAuthorizedRequest"];
    }
    if (json["__abp"] is bool) {
      abp = json["__abp"];
    }
  }

  static List<TeacherDashBoardResponse> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(TeacherDashBoardResponse.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (teacher != null) {
      _data["result"] = teacher?.toJson();
    }
    _data["targetUrl"] = targetUrl;
    _data["success"] = success;
    _data["error"] = error;
    _data["unAuthorizedRequest"] = unAuthorizedRequest;
    _data["__abp"] = abp;
    return _data;
  }
}
