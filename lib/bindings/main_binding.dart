
import 'package:get/get.dart';
import 'package:icomax/data/local/local_repository_impl.dart';
import 'package:icomax/data/local/local_repository_interface.dart';


class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalRepositoryInterface>(() => LocalRepositoryImpl());
  }

}