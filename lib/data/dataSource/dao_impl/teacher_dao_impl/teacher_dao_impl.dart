import 'package:assesment_task/core/api/api_manager.dart';
import 'package:assesment_task/core/utils/constants.dart';
import 'package:assesment_task/data/dataSource/dao_contract/teacher_dao_contract/teacher_dao_contract.dart';
import 'package:assesment_task/data/model/teacher_dashboard/appointment_mode.dart';
import 'package:assesment_task/data/model/teacher_dashboard/appointment_response.dart';
import 'package:assesment_task/data/model/teacher_dashboard/teacher_dashBoard_response.dart';
import 'package:assesment_task/data/model/teacher_dashboard/teacher_dashbaord_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TeacherDataSource)
class TeacherDaoImpl extends TeacherDataSource {
  ApiManager apiManager;
  @factoryMethod
  TeacherDaoImpl(this.apiManager);

  @override
  Future<Either<TeacherDashBoardModel, String>> getDashBoard() async {
    try {
      var response = await apiManager
          .getData(AppConstants.teacherDashBoardEndPoint, headers: {
        "Authorization":
            "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6Ijg4MiIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWUiOiJ5YXNzZXJAZmFyaWQuY29tIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoieWFzc2VyQGZhcmlkLmNvbSIsIkFzcE5ldC5JZGVudGl0eS5TZWN1cml0eVN0YW1wIjoiMjU1NjJZNE9UVEdYNVJPU05DWkxYNVZUV0pZT0U3WFUiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJUZWFjaGVyIiwiaHR0cDovL3d3dy5hc3BuZXRib2lsZXJwbGF0ZS5jb20vaWRlbnRpdHkvY2xhaW1zL3RlbmFudElkIjoiMSIsInN1YiI6Ijg4MiIsImp0aSI6IjQyN2ZlZjgxLTFjZGYtNDJhOS05YTdmLTFiOWZmZmQ2ODcyZSIsImlhdCI6MTczOTQzNDc0OSwibmJmIjoxNzM5NDM0NzQ5LCJleHAiOjE3NzA5NzA3NDksImlzcyI6IkZhcmlkIiwiYXVkIjoiRmFyaWQifQ.8TXxR7lMkhUHRmc7lNIcbdMEDnf0-1roiWdYDZZqj-w"
      });
      TeacherDashBoardResponse teacherDashBoardResponse =
          TeacherDashBoardResponse.fromJson(response.data);

      return Left(teacherDashBoardResponse.teacher!);
    } catch (e) {
      return Right(e.toString());
    }
  }

  @override
  Future<Either<List<AppointmentModel>, String>> getappointments() async {
    try {
      var result = await apiManager.getData(AppConstants.appointmentsEndPoint,
          parameters: {"userId": 882});
      List<AppointmentModel> appointments =
          AppointmentResponse.fromJson(result.data).appoinntmets!;
      return Left(appointments);
    } catch (e) {
      return Right(e.toString());
    }
  }
}
