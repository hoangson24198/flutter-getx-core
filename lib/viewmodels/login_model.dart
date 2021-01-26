import 'package:fimber/fimber.dart';
import 'package:get/get.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/base/base_controllers.dart';
import 'package:icomax/base/response_base.dart';
import 'package:icomax/data/command.dart';
import 'package:icomax/data/network/api_client.dart';
import 'package:icomax/data/network/app_repository.dart';
import 'package:icomax/data/network/model/response_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginModel extends BaseGetController {
  final AppRepository _authenticationService =
      Get.find<AppRepository>();

  String errorMessage;
  Rx<Command> command = Command.loading("message").obs;

  Future<ResponseUser> login(String username, String password) async {
    try{
         var result = await runBusyFuture(_authenticationService.login(username,password));
        if(result.success){
          command.value = Command.success(result);
        }else{
          command.value = Command.error(result.message);
        }
    }catch(error) {
        Fimber.d(error.toString());
        //command.value = Command.error(error.toString());
    }
  }
}
