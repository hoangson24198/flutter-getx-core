import 'package:get/get.dart';
import 'package:icomax/base/base_controllers.dart';
import 'package:icomax/base/response_base.dart';
import 'package:icomax/data/command.dart';
import 'package:icomax/data/network/api_client.dart';
import 'package:icomax/data/network/app_repository.dart';
import 'package:icomax/data/network/model/response_user.dart';

class LoginModel extends BaseGetController {
  final AppRepository _authenticationService =
      Get.find<AppRepository>();

  String errorMessage;
  Rx<Command> command;

  Future<ResponseBase<ResponseUser>> login(String username, String password) async {
    var result = await runBusyFuture(_authenticationService.login(username,password));
    return result;
  }
}
