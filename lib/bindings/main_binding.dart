
import 'package:get/get.dart';
import 'file:///D:/icomax/lib/data/local/local_repository_impl.dart';
import 'file:///D:/icomax/lib/data/local/local_repository_interface.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
  }

}