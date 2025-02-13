import 'package:assesment_task/data/model/teacher_dashboard/appointment_mode.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/appointment_entity.dart';

class TeacherDashBoardEntity {
  String? techerName;
  int? sessionCount;
  int? studentCount;
  int? pendingAppointments;
  int? walletBallance;
  List<AppointmentEntity>? appointments;

  TeacherDashBoardEntity(
      {this.techerName,
      this.sessionCount,
      this.studentCount,
      this.pendingAppointments,
      this.appointments,
      this.walletBallance});

  TeacherDashBoardEntity.fromJson(Map<String, dynamic> json) {
    if (json["techerName"] is String) {
      techerName = json["techerName"];
    }
    if (json["sessionCount"] is int) {
      sessionCount = json["sessionCount"];
    }
    if (json["studentCount"] is int) {
      studentCount = json["studentCount"];
    }
    if (json["pendingAppointments"] is int) {
      pendingAppointments = json["pendingAppointments"];
    }
    // if (json["appointments"] is List) {
    //   appointments = json["appointments"] ?? [];
    // }
    if (json["walletBlance"] is int) {
      walletBallance = json["walletBlance"];
    }
  }

  static List<TeacherDashBoardEntity> fromList(
      List<Map<String, dynamic>> list) {
    return list.map(TeacherDashBoardEntity.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["techerName"] = techerName;
    _data["sessionCount"] = sessionCount;
    _data["studentCount"] = studentCount;
    _data["walletBlance"] = studentCount;
    _data["pendingAppointments"] = pendingAppointments;
    if (appointments != null) {
      _data["appointments"] = appointments;
    }
    return _data;
  }
}
