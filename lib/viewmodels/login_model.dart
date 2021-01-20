import 'package:fimber/fimber.dart';
import 'package:get/get.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/base/base_controllers.dart';
import 'package:icomax/base/response_base.dart';
import 'file:///D:/icomax/lib/data/command.dart';
import 'package:icomax/data/network/api_client.dart';
import 'package:icomax/data/network/app_repository.dart';
import 'package:icomax/data/network/model/response_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginModel extends BaseGetController {
  final AppRepository _authenticationService =
      Get.find<AppRepository>();

  String errorMessage;
  Rx<Command> command;

  Future<ResponseBase<ResponseUser>> login(String username, String password) async {
    try{
      var result = await _authenticationService.login(username,password);
      Fimber.d("Login Success ${result}");
      if(result.checkSuccess()){
        SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
        sharedPreferences.setString(SharedPreferenceKey.pref_token, result.data.token);
        sharedPreferences.setString(SharedPreferenceKey.pref_user, result.data.userInfo);
        return result;
      }else{
        Fimber.d("Login fail ${result.toJson()}");
      }
    }catch(error) {
        return null;
    }
  }
}
