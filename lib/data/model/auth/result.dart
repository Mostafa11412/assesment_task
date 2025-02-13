import 'package:assesment_task/domain/entities/authEntitiy/result_entity.dart';

class Result {
  String? accessToken;
  String? encryptedAccessToken;
  int? expireInSeconds;
  int? userId;
  int? walltetId;
  List<dynamic>? roles;

  Result(
      {this.accessToken,
      this.encryptedAccessToken,
      this.expireInSeconds,
      this.userId,
      this.walltetId,
      this.roles});

  Result.fromJson(Map<String, dynamic> json) {
    if (json["accessToken"] is String) {
      accessToken = json["accessToken"];
    }
    if (json["encryptedAccessToken"] is String) {
      encryptedAccessToken = json["encryptedAccessToken"];
    }
    if (json["expireInSeconds"] is int) {
      expireInSeconds = json["expireInSeconds"];
    }
    if (json["userId"] is int) {
      userId = json["userId"];
    }
    if (json["walltetId"] is int) {
      walltetId = json["walltetId"];
    }
    if (json["roles"] is List) {
      roles = json["roles"] ?? [];
    }
  }

  static List<Result> fromList(List<Map<String, dynamic>> list) {
    return list.map(Result.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["accessToken"] = accessToken;
    _data["encryptedAccessToken"] = encryptedAccessToken;
    _data["expireInSeconds"] = expireInSeconds;
    _data["userId"] = userId;
    _data["walltetId"] = walltetId;
    if (roles != null) {
      _data["roles"] = roles;
    }
    return _data;
  }

  ResultEntity toEntity() {
    return ResultEntity(
      accessToken: accessToken,
      userId: userId,
    );
  }
}
