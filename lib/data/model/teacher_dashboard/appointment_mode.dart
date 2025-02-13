import 'package:assesment_task/data/model/teacher_dashboard/appointment_response.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/appointment_entity.dart'
    as entity;

class AppointmentModel {
  int? id;
  String? title;
  dynamic titleEn;
  String? image;
  String? descritbion;
  String? shortdescritbion;
  dynamic shortdescritbionEn;
  String? date;
  bool? isReported;
  dynamic reportId;
  bool? teacherIsReported;
  dynamic teacherReportId;
  bool? parentIsReported;
  dynamic parentTeacherReportId;
  int? number;
  int? appointmentStatus;
  int? sessionId;
  dynamic timeSlotId;
  List<Students>? students;
  dynamic teacher;

  AppointmentModel(
      {this.id,
      this.title,
      this.titleEn,
      this.image,
      this.descritbion,
      this.shortdescritbion,
      this.shortdescritbionEn,
      this.date,
      this.isReported,
      this.reportId,
      this.teacherIsReported,
      this.teacherReportId,
      this.parentIsReported,
      this.parentTeacherReportId,
      this.number,
      this.appointmentStatus,
      this.sessionId,
      this.timeSlotId,
      this.students,
      this.teacher});

  AppointmentModel.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    titleEn = json["titleEn"];
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["descritbion"] is String) {
      descritbion = json["descritbion"];
    }
    if (json["shortdescritbion"] is String) {
      shortdescritbion = json["shortdescritbion"];
    }
    shortdescritbionEn = json["shortdescritbionEn"];
    if (json["date"] is String) {
      date = json["date"];
    }
    if (json["isReported"] is bool) {
      isReported = json["isReported"];
    }
    reportId = json["reportId"];
    if (json["teacherIsReported"] is bool) {
      teacherIsReported = json["teacherIsReported"];
    }
    teacherReportId = json["teacherReportId"];
    if (json["parentIsReported"] is bool) {
      parentIsReported = json["parentIsReported"];
    }
    parentTeacherReportId = json["parentTeacherReportId"];
    if (json["number"] is int) {
      number = json["number"];
    }
    if (json["appointmentStatus"] is int) {
      appointmentStatus = json["appointmentStatus"];
    }
    if (json["sessionId"] is int) {
      sessionId = json["sessionId"];
    }
    timeSlotId = json["timeSlotId"];
    if (json["students"] is List) {
      students = json["students"] == null
          ? null
          : (json["students"] as List)
              .map((e) => Students.fromJson(e))
              .toList();
    }
    teacher = json["teacher"];
  }

  static List<AppointmentModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(AppointmentModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["title"] = title;
    _data["titleEn"] = titleEn;
    _data["image"] = image;
    _data["descritbion"] = descritbion;
    _data["shortdescritbion"] = shortdescritbion;
    _data["shortdescritbionEn"] = shortdescritbionEn;
    _data["date"] = date;
    _data["isReported"] = isReported;
    _data["reportId"] = reportId;
    _data["teacherIsReported"] = teacherIsReported;
    _data["teacherReportId"] = teacherReportId;
    _data["parentIsReported"] = parentIsReported;
    _data["parentTeacherReportId"] = parentTeacherReportId;
    _data["number"] = number;
    _data["appointmentStatus"] = appointmentStatus;
    _data["sessionId"] = sessionId;
    _data["timeSlotId"] = timeSlotId;
    if (students != null) {
      _data["students"] = students?.map((e) => e.toJson()).toList();
    }
    _data["teacher"] = teacher;
    return _data;
  }

  entity.AppointmentEntity toEntity() {
    return entity.AppointmentEntity(
        appointmentStatus: appointmentStatus,
        date: date,
        id: id,
        image: image,
        number: number,
        students: students,
        title: title);
  }
}
