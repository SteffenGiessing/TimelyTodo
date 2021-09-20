import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class dbCon {

  
  final database = openDatabase(
    join(await getDatabasesPath(), 'task.db'));



Future<void> insert(Task task) async {
  final db = await database;
  await db.insert('tasks', task.toMap(),
      ConflictAlgorithm: ConflictAlgorithm.replace);
}


  Future openDb() async {
  final database = openDatabase(
    join(await getDatabasesPath(), 'task.db'),
    onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE task IF NOT EXISTS(id INTERGER PRIMARY KEY,task TEXT, info TEXT)");
    },
    version: 1,
  );
}
}