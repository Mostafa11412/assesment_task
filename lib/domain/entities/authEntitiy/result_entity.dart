class ResultEntity {
  String? accessToken;
  int? userId;

  ResultEntity({
    this.accessToken,
    this.userId,
  });

  ResultEntity.fromJson(Map<String, dynamic> json) {
    if (json["accessToken"] is String) {
      accessToken = json["accessToken"];
    }

    if (json["userId"] is int) {
      userId = json["userId"];
    }
  }

  static List<ResultEntity> fromList(List<Map<String, dynamic>> list) {
    return list.map(ResultEntity.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["accessToken"] = accessToken;
    _data["userId"] = userId;

    return _data;
  }
}
