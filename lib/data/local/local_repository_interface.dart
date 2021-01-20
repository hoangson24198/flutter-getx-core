

import 'package:icomax/data/network/model/local_user.dart';

abstract class LocalRepositoryInterface {
  Future<void> saveToken(String token);
  Future<void> clearInfo();
  Future<void> saveUser(User user);
  Future<User> getUser();
}