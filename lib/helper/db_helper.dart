import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper databasehelper = DatabaseHelper._();
  DatabaseHelper._();
  Database? _database;

  Future<Database> get database async {
    return _database ?? await initDatabase();
  }

  Future<Database> initDatabase() async {
    String path = await getDatabasesPath();
    String dbpath = join(path, 'Student.db');

    Database database = await openDatabase(
      dbpath,
      version: 1,
      onCreate: (db, version) {
        db.execute(
            'CREATE TABLE Student(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT ,age INTEGER,coures TEXT)');
      },
    );

    if(database.isOpen)
      {
        print("database is open !");
      }
    else
      {
        print("database is not open !");
      }
    return database;
  }

  Future<void> insertData() async {
    Database db = await database;
    int id = await db.rawInsert(
        'INSERT INTO Student(name,age,coures) VALUES ("Meshva",20,"Master in flutter")');
  }
}
