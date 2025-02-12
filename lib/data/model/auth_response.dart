import 'package:assesment_task/data/model/result.dart';
import 'package:assesment_task/domain/entities/authEntitiy/result_entity.dart';

class AuthResponse {
  Result? result;
  dynamic targetUrl;
  bool? success;
  dynamic error;
  bool? unAuthorizedRequest;
  bool? abp;

  AuthResponse(
      {this.result,
      this.targetUrl,
      this.success,
      this.error,
      this.unAuthorizedRequest,
      this.abp});

  AuthResponse.fromJson(Map<String, dynamic> json) {
    if (json["result"] is Map) {
      result = json["result"] == null ? null : Result.fromJson(json["result"]);
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

  static List<AuthResponse> fromList(List<Map<String, dynamic>> list) {
    return list.map(AuthResponse.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (result != null) {
      _data["result"] = result?.toJson();
    }
    _data["targetUrl"] = targetUrl;
    _data["success"] = success;
    _data["error"] = error;
    _data["unAuthorizedRequest"] = unAuthorizedRequest;
    _data["__abp"] = abp;
    return _data;
  }
}
