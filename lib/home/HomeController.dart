import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends GetxController {
  RxList<String> tasks = <String>[
    "Learn Flutter",
    "Build UI",
    "Get Client",
  ].obs;

  void addTask(String task) {
    if (task.trim().isNotEmpty) {
      tasks.add(task);
    }
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }
}
