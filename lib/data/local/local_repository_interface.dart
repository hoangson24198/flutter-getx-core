import 'package:icomax/data/network/model/response_user.dart';

abstract class LocalRepositoryInterface {
  Future<void> clearInfo();
  Future<void> saveUser(ResponseUser user);
  Future<ResponseUser> getUser();
}