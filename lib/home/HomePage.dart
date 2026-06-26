import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomeController.dart';

class HomePage extends GetView<HomeController> {
  HomePage({super.key});

  final TextEditingController taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Tasks")),

      // body: Obx(
      //   () => ListView.builder(
      //     itemCount: controller.tasks.length,
      //     itemBuilder: (context, index) {
      //       return ListTile(
      //         title: Text(controller.tasks[index]),
      //         trailing: IconButton(
      //           onPressed: () {
      //             controller.deleteTask(index);
      //           },
      //           icon: Icon(Icons.delete),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.tasks[index]),
              trailing: IconButton(
                onPressed: () {
                  controller.deleteTask(index);
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: const Text("Add Task"),
                content: TextField(controller: taskController),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      controller.addTask(taskController.text);

                      taskController.clear();

                      Get.back();
                    },
                    child: const Text("Add"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
