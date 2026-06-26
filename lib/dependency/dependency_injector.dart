import 'package:get/get.dart';

void bindController<T>(T Function() controller, {bool? fenix, bool? permanent}) {
  if (permanent == true) {
    Get.put<T>(controller(), permanent: true);
  } else {
    Get.lazyPut<T>(controller, fenix: fenix ?? false);
  }
}
