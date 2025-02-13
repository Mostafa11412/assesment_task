import 'package:assesment_task/data/model/teacher_dashboard/appointment_mode.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/teacher_dash_board_entity.dart';

class TeacherDashBoardModel {
  String? techerName;
  int? packagesCount;
  int? sessionCount;
  int? studentCount;
  int? pendingAppointments;
  int? walletBlance;
  List<AppointmentModel>? appointments;
  List<dynamic>? homeWorks;

  TeacherDashBoardModel(
      {this.techerName,
      this.packagesCount,
      this.sessionCount,
      this.studentCount,
      this.pendingAppointments,
      this.walletBlance,
      this.appointments,
      this.homeWorks});

  TeacherDashBoardModel.fromJson(Map<String, dynamic> json) {
    if (json["techerName"] is String) {
      techerName = json["techerName"];
    }
    if (json["packagesCount"] is int) {
      packagesCount = json["packagesCount"];
    }
    if (json["sessionCount"] is int) {
      sessionCount = json["sessionCount"];
    }
    if (json["studentCount"] is int) {
      studentCount = json["studentCount"];
    }
    // if (json["pendingAppointments"] is int) {
    //   pendingAppointments = json["pendingAppointments"];
    // }
    if (json["walletBlance"] is int) {
      walletBlance = json["walletBlance"];
    }
    // if (json["appointments"] is List) {
    //   appointments = json["appointments"] ?? [];
    // }
    if (json["homeWorks"] is List) {
      homeWorks = json["homeWorks"] ?? [];
    }
  }

  static List<TeacherDashBoardModel> fromList(List<Map<String, dynamic>> list) {
    return list.map(TeacherDashBoardModel.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["techerName"] = techerName;
    _data["packagesCount"] = packagesCount;
    _data["sessionCount"] = sessionCount;
    _data["studentCount"] = studentCount;
    _data["pendingAppointments"] = pendingAppointments;
    _data["walletBlance"] = walletBlance;
    if (appointments != null) {
      _data["appointments"] = appointments;
    }
    if (homeWorks != null) {
      _data["homeWorks"] = homeWorks;
    }
    return _data;
  }

  TeacherDashBoardEntity toEntity() {
    return TeacherDashBoardEntity(
        walletBallance: walletBlance,
      
        sessionCount: sessionCount,
        studentCount: studentCount,
        techerName: techerName);
  }
}
