import 'package:get/get.dart';
import 'package:icomax/data/network/api_client.dart';
import 'package:icomax/data/network/app_repository.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
      Get.lazyPut<AppRepository>(() => AppRepository());
  }

}