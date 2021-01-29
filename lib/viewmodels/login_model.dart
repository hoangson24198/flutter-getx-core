import 'package:fimber/fimber.dart';
import 'package:get/get.dart';
import 'package:icomax/base/base_controllers.dart';
import 'package:icomax/data/command.dart';
import 'package:icomax/data/network/app_repository.dart';
import 'package:icomax/data/network/model/response_user.dart';

class LoginModel extends BaseGetController {
  final AppRepository _authenticationService = Get.find<AppRepository>();

  String errorMessage;
  Rx<Command> command = Command.loading("").obs;

  Future<ResponseUser> login(String username, String password) async {
    await runBusyFuture(_authenticationService.login(username, password)).then(
        (value) {
      if (value.success) {
        command.value = Command.success(value);
        Fimber.d("Login Success");
      } else {
        command.value = Command.error(value.message);
      }
    }, onError: (error) {
      command.value = Command.error(error.toString());
    });
  }
}
