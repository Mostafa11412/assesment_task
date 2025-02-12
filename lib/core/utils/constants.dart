class AppConstants {
  static const String BaseUrl = "https://v2.farid.academy/api/";
  static const String AuthEndPoint = "TokenAuth/Authenticate";
  static RegExp email =
      RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z]+\.[a-zA-Z]+(\.[a-zA-Z]+)?$');
  static RegExp password = RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{8,}$');
}
