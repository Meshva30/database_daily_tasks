import 'package:database_daily_tasks/controller/daatabase_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    DatabaseController databaseController =Get.put(DatabaseController());
    return Scaffold(
       floatingActionButton: FloatingActionButton(
         onPressed: () {
           databaseController.addRecords();
         },
         child: Icon(Icons.add),
       ),

    );
  }
}
