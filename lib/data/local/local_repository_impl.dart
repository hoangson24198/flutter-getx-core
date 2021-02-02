import 'package:gson/gson.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/data/local/local_repository_interface.dart';
import 'package:icomax/data/network/model/response_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalRepositoryImpl implements LocalRepositoryInterface {
  @override
  Future<void> clearInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Future<ResponseUser> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.get(SharedPreferenceKey.pref_user);
  }

  @override
  Future<void> saveUser(ResponseUser user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferenceKey.pref_user, user.toJson().toString());
  }
}