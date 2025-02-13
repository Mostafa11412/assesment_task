part of 'dashboard_cubit.dart';

@immutable
abstract class DashboardState {}

class DashboardInitialState extends DashboardState {}

class DashBoardLoadingState extends DashboardState {}

class DashBoardErrorState extends DashboardState {
  final String error;
  DashBoardErrorState(this.error);
}

class DashBoardSuccessState extends DashboardState {
  final TeacherDashBoardEntity teacherDashBoardEntity;
  DashBoardSuccessState(this.teacherDashBoardEntity);
}
