import 'package:desafio_1/commons/entities/user_info.dart';

class ControllerSession {
  UserInfoData? userInfo;

  get isLogged => userInfo != null;
}
