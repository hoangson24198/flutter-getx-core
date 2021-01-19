import 'package:get/get.dart';
import 'package:icomax/base/base_controllers.dart';
import 'file:///D:/icomax/lib/data/command.dart';

import '../core/services/authentication_service.dart';

class LoginModel extends BaseGetController {
  final AuthenticationService _authenticationService =
      Get.find<AuthenticationService>();

  String errorMessage;
  Rx<Command> command;

  //data dựa theo command
  //loading
  var button = "Login".obs;

  loginTet(String userId) {
    command.value = Command.loading("loading");
    command.value = Command.error("loi ne");
  }

  Future<bool> login(String userIdText) async {
    //setViewState(ViewState.Busy);

    var userId = int.tryParse(userIdText);

    // Not a number
    if (userId == null) {
      errorMessage = 'Value entered is not a number';
//      setViewState(ViewState.Idle);
      return false;
    }

    //command = Command.error("loi ne");
    var success = await runBusyFuture(_authenticationService.login(userId));

    // Handle potential error here too.

    if (success) {
      button.value = "loadding ok";
      command.value = Command.loading("loading nè");
    } else {
      command.value = Command.error("loi ne");
    }

//    setViewState(ViewState.Idle);
    return success;
  }
}
