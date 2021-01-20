
import 'package:get/get.dart';
import 'file:///D:/icomax/lib/data/local/local_repository_impl.dart';
import 'file:///D:/icomax/lib/data/local/local_repository_interface.dart';
import 'package:icomax/data/network/app_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
    Get.lazyPut<AppRepository>(() => AppRepository());
  }

}