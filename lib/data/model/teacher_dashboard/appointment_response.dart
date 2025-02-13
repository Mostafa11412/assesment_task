import 'package:assesment_task/data/model/teacher_dashboard/appointment_mode.dart';

class AppointmentResponse {
  List<AppointmentModel>? appoinntmets;
  dynamic targetUrl;
  bool? success;
  dynamic error;
  bool? unAuthorizedRequest;
  bool? abp;

  AppointmentResponse(
      {this.appoinntmets,
      this.targetUrl,
      this.success,
      this.error,
      this.unAuthorizedRequest,
      this.abp});

  AppointmentResponse.fromJson(Map<String, dynamic> json) {
    if (json["result"] is List) {
      appoinntmets = json["result"] == null
          ? null
          : (json["result"] as List)
              .map((e) => AppointmentModel.fromJson(e))
              .toList();
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

  static List<AppointmentResponse> fromList(List<Map<String, dynamic>> list) {
    return list.map(AppointmentResponse.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (appoinntmets != null) {
      _data["result"] = appoinntmets?.map((e) => e.toJson()).toList();
    }
    _data["targetUrl"] = targetUrl;
    _data["success"] = success;
    _data["error"] = error;
    _data["unAuthorizedRequest"] = unAuthorizedRequest;
    _data["__abp"] = abp;
    return _data;
  }
}

class Students {
  int? id;
  String? name;
  dynamic phone;
  dynamic email;
  dynamic imageUrl;
  dynamic parentId;

  Students(
      {this.id,
      this.name,
      this.phone,
      this.email,
      this.imageUrl,
      this.parentId});

  Students.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    phone = json["phone"];
    email = json["email"];
    imageUrl = json["imageUrl"];
    parentId = json["parentId"];
  }

  static List<Students> fromList(List<Map<String, dynamic>> list) {
    return list.map(Students.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["phone"] = phone;
    _data["email"] = email;
    _data["imageUrl"] = imageUrl;
    _data["parentId"] = parentId;
    return _data;
  }
}
