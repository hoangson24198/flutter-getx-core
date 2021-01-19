
import 'package:dio/dio.dart';
import 'package:icomax/domain/model/User.dart';

abstract class LocalRepositoryInterface {
  Future<void> saveToken(String token);
  Future<void> clearInfo();
  Future<void> saveUser(User user);
  Future<User> getUser();
}