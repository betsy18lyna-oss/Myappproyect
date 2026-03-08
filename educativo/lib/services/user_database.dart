import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class UserDatabase {

  static Database? _database;

  static Future<Database> get database async {

    if (_database != null) return _database!;

    _database = await initDB();

    return _database!;

  }

  static Future<Database> initDB() async {

    final path = join(await getDatabasesPath(), 'gestedu.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {

        await db.execute(
          '''
          CREATE TABLE users(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            email TEXT,
            password TEXT
          )
          '''
        );

      },
    );

  }

  static Future insertUser(String email, String password) async {

    final db = await database;

    await db.insert(
      "users",
      {
        "email": email,
        "password": password
      }
    );

  }

  static Future<bool> login(String email, String password) async {

    final db = await database;

    final result = await db.query(
      "users",
      where: "email=? AND password=?",
      whereArgs: [email, password]
    );

    return result.isNotEmpty;

  }

}