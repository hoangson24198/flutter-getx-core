import 'package:gson/gson.dart';
import 'package:icomax/base/app_constant.dart';
import 'package:icomax/data/network/model/local_user.dart';
import 'file:///D:/icomax/lib/data/local/local_repository_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalRepositoryImpl implements LocalRepositoryInterface {

  @override
  Future<void> saveToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferenceKey.pref_token, token);
  }

  @override
  Future<void> clearInfo() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Future<User> getUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.get(SharedPreferenceKey.pref_user);
  }

  @override
  Future<void> saveUser(User user) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(SharedPreferenceKey.pref_user, Gson().encoder.encode(user));
  }
}