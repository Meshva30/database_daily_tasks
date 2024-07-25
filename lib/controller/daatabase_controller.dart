import 'package:database_daily_tasks/helper/db_helper.dart';
import 'package:get/get.dart';

class DatabaseController extends GetxController{
  void initDB()
  {
    DatabaseHelper.databasehelper.initDatabase();

  }

  @override
  void onInit() {

    super.onInit();
    initDB();

  }
  void addRecords()
  {
    DatabaseHelper.databasehelper.insertData();
  }
}