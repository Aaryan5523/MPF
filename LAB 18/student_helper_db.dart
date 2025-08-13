
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../LAB 18/student_model.dart';

class StudentHelper {
  Database? _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initDB();
    }
    return _db!;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'database.db');

    Database db = await openDatabase(
        path,
        version: 1,
        onCreate: (db, version){
          db.execute('''
              CREATE TABLE STUDENT(
                ID INTEGER PRIMARY KEY AUTOINCREMENT,
                NAME TEXT,
                ENROLLMENT_NUMBER TEXT,
                SEMESTER INTEGER,
                BRANCH TEXT,
                MOBILE_NUMBER TEXT,
                PASSWORD TEXT
              )
            ''');
        }
    );
    return db;
  }


  Future<int> insert(Student student) async {
    Database database = await db;
    return database.insert('STUDENT', Student.toMap(student));
  }
}
