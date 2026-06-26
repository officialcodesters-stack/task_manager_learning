import 'package:get/get_instance/src/bindings_interface.dart';

import '../dependency/dependency_injector.dart';
import '../home/HomeController.dart';


class HomeBinding extends Bindings {
  @override
  void dependencies() {
    bindController<HomeController>(() => HomeController());
  }
}