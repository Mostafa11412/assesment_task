import 'package:assesment_task/data/model/teacher_dashboard/appointment_mode.dart';
import 'package:assesment_task/data/model/teacher_dashboard/teacher_dashbaord_model.dart';
import 'package:dartz/dartz.dart';

abstract class TeacherDataSource {
  Future<Either<TeacherDashBoardModel, String>> getDashBoard();
  Future<Either<List<AppointmentModel>, String>> getappointments();
}
