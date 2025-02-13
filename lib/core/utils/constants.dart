class AppConstants {
  static const String baseUrl = "https://v2.farid.academy/api/";
  static const String authEndPoint = "TokenAuth/Authenticate";
  static const String teacherDashBoardEndPoint =
      "services/app/CourseTeacher/GetTeacherDashBoard";
  static const String appointmentsEndPoint =
      "services/app/CourseTeacher/GetTeacherAllAppointments";

  static RegExp email =
      RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]+(\.[a-zA-Z]+)?$');
  static RegExp password = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');
}
