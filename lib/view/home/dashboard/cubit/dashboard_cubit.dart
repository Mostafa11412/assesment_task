import 'package:assesment_task/data/model/teacher_dashboard/appointment_mode.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/appointment_entity.dart';
import 'package:assesment_task/domain/entities/teacher_dashboard_entity/teacher_dash_board_entity.dart';
import 'package:assesment_task/domain/repo_contract/teacher_dashboard_repo/teacher_dashboard_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';

@injectable
class DashboardCubit extends Cubit<DashboardState> {
  TeacherDashboardRepo teacherDashboardRepo;

  @factoryMethod
  DashboardCubit(this.teacherDashboardRepo) : super(DashboardInitialState());

  getDashBoard() async {
    if (!isClosed) emit(DashBoardLoadingState());
    var result = await teacherDashboardRepo.getDashBoard();
    result.fold(
      (dashBoardEntity) async {
        var resultAp = await teacherDashboardRepo.getAppointments();
        resultAp.fold(
          (appointments) {
            dashBoardEntity.appointments = appointments;

            dashBoardEntity.pendingAppointments = appointments.length;
          },
          (error) {
            debugPrint(error);
            if (!isClosed) emit(DashBoardErrorState(error));
          },
        );
        if (!isClosed) emit(DashBoardSuccessState(dashBoardEntity));
      },
      (error) {
        debugPrint(error);

        if (!isClosed) emit(DashBoardErrorState(error));
      },
    );
  }

  getAppointmentsForDay(DateTime selectedDate) async {
    emit(DashBoardLoadingState());

    var result = await teacherDashboardRepo.getDashBoard();
    result.fold(
      (dashBoardEntity) async {
        if (dashBoardEntity == null) {
          emit(DashBoardErrorState("Dashboard data is null"));
          return;
        }

        var resultAp = await teacherDashboardRepo.getAppointments();
        resultAp.fold(
          (appointments) {
            if (appointments == null) {
              emit(DashBoardErrorState("Appointments data is null"));
              return;
            }

            List<AppointmentEntity> filteredAppointments =
                appointments.where((appointment) {
              if (appointment.date == null)
                return false; // Prevent parsing null date
              DateTime appointmentDate =
                  DateTime.tryParse(appointment.date!) ?? DateTime(2000);
              return appointmentDate.year == selectedDate.year &&
                  appointmentDate.month == selectedDate.month &&
                  appointmentDate.day == selectedDate.day;
            }).toList();

            dashBoardEntity.appointments = filteredAppointments;
            dashBoardEntity.pendingAppointments = filteredAppointments.length;

            emit(DashBoardSuccessState(dashBoardEntity));
          },
          (error) {
            debugPrint("Error fetching appointments: $error");
            emit(DashBoardErrorState(error));
          },
        );
      },
      (error) {
        debugPrint("Error fetching dashboard: $error");
        emit(DashBoardErrorState(error));
      },
    );
  }

  String time(String date) {
    String isoDate = date;

    DateTime dateTime = DateTime.parse(isoDate);

    List<String> arabicMonths = [
      "يناير",
      "فبراير",
      "مارس",
      "ابريل",
      "مايو",
      "يونيو",
      "يوليو",
      "اغسطس",
      "سبتمبر",
      "اكتوبر",
      "نوفمبر",
      "ديسمبر"
    ];

    String day = dateTime.day.toString();
    String month = arabicMonths[dateTime.month - 1];
    String year = dateTime.year.toString();

    int hour = dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour;
    String period = dateTime.hour >= 12 ? "م" : "ص"; // Arabic AM/PM
    String minute = dateTime.minute.toString().padLeft(2, '0');

    String formattedDate = "$day $month $year / $hour:$minute $period";
    return formattedDate;
  }
}
