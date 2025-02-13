import 'package:assesment_task/data/model/teacher_dashboard/appointment_response.dart';

class AppointmentEntity {
  int? id;
  String? title;
  String? image;
  String? date;
  int? number;
  int? appointmentStatus;
  List<Students>? students;

  AppointmentEntity(
      {this.id,
      this.title,
      this.image,
      this.date,
      this.number,
      this.appointmentStatus,
      this.students});

  AppointmentEntity.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["number"] is int) {
      number = json["number"];
    }
    if (json["appointmentStatus"] is int) {
      appointmentStatus = json["appointmentStatus"];
    }
    if (json["students"] is List) {
      students = json["students"] == null
          ? null
          : (json["students"] as List)
              .map((e) => Students.fromJson(e))
              .toList();
    }
  }

  static List<AppointmentEntity> fromList(List<Map<String, dynamic>> list) {
    return list.map(AppointmentEntity.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["image"] = image;
    _data["date"] = date;
    _data["number"] = number;
    _data["appointmentStatus"] = appointmentStatus;
    if (students != null) {
      _data["students"] = students?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}
