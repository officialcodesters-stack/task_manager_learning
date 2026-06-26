import 'package:get/get.dart';
import 'package:task_manager_learning/home/HomePage.dart';

import '../binding/home_binding.dart';
import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),

  ];
}
