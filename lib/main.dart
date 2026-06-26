import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_learning/routes/app_pages.dart';
import 'package:task_manager_learning/routes/app_routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HOME,
      getPages : AppPages.list,
      // home: HomePage(),
    );
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//
//   final List<String> tasks = ['learn', 'flutter', 'oops'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(title: Text('Task Manager')),
//       body: ListView.builder(
//         itemCount: tasks.length,
//         itemBuilder: (context, index) {
//           return ListTile(title: Text(tasks[index]));
//         },
//       ),
//     );
//   }
// }
