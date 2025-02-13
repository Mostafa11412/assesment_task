import 'package:assesment_task/data/dataSource/dao_contract/teacher_dao_contract/teacher_dao_contract.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/appointment_entity.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/teacher_dash_board_entity.dart';
import 'package:assesment_task/domain/repo_contract/teacher_dashboard_repo/teacher_dashboard_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TeacherDashboardRepo)
class TeacherDashboardRepoImpl extends TeacherDashboardRepo {
  TeacherDataSource teacherDataSource;
  @factoryMethod
  TeacherDashboardRepoImpl(this.teacherDataSource);

  @override
  Future<Either<TeacherDashBoardEntity, String>> getDashBoard() async {
    var result = await teacherDataSource.getDashBoard();

    return result.fold(
      (dashBoardModel) {
        TeacherDashBoardEntity teacherDashBoardEntity =
            dashBoardModel.toEntity();
        return Left(teacherDashBoardEntity);
      },
      (error) {
        return Right(error);
      },
    );
  }

  @override
  Future<Either<List<AppointmentEntity>, String>> getAppointments() async {
    var result = await teacherDataSource.getappointments();
    return result.fold(
      (appointmentModel) {
        List<AppointmentEntity> appointmentsEntities = appointmentModel
            .map(
              (e) => e.toEntity(),
            )
            .toList();

        return Left(appointmentsEntities);
      },
      (error) {
        return Right(error.toString());
      },
    );
  }
}
