import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/base/base_controllers.dart';
import 'package:icomax/data/local/local_repository_impl.dart';
import 'package:icomax/data/local/local_repository_interface.dart';
import 'package:icomax/data/network/api_client.dart';
import 'package:icomax/data/network/app_repository.dart';
import 'package:icomax/data/network/model/response_user.dart';
import 'package:icomax/helpers/helpers.dart';
import 'package:icomax/ui/views/home/home_view.dart';
import 'package:icomax/ui/widgets/custom_loader.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginModel extends BaseGetController {
  final AppRepository _authenticationService = Get.find<AppRepository>();
  final LocalRepositoryImpl _localRepositoryImpl = Get.find<LocalRepositoryInterface>();


  Future<ResponseUser> login(String username, String password) async {
    await runBusyFuture(_authenticationService.login(username, password)).then(
        (value) {
      if (value.success) {
        Helper.showToast("Login Success");
        _localRepositoryImpl.saveUser(value);
        Get.to(HomeView());
      } else {
        CustomLoader().hideLoader();
      }
    }).catchError((e) {
      CustomLoader().hideLoader();
      Helper.showToast(e.toString());
    });
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(SharedPreferenceKey.pref_token);
    await prefs.remove(SharedPreferenceKey.pref_user);
  }
}
