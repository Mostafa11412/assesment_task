import 'package:assesment_task/domain/entities/teacher_dashboard_entity/appointment_entity.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/teacher_dash_board_entity.dart';
import 'package:dartz/dartz.dart';

abstract class TeacherDashboardRepo {
  Future<Either<TeacherDashBoardEntity, String>> getDashBoard();
  Future<Either<List<AppointmentEntity>, String>> getAppointments();
}
