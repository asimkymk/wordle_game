import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBConnection {
  final _databaseName = "words.db";
  final _databaseVersion = 1;

  final table = 'words';

  final columnId = 'id';
  final columnName = 'word';

  // make this a singleton class
  DBConnection._privateConstructor();
  static DBConnection instance = DBConnection._privateConstructor();

  // only have a single app-wide reference to the database
  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database!;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(
      path,
      version: _databaseVersion,
    );
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }

  // Queries rows based on the argument received
  Future<List<Map<String, dynamic>>> queryRows(name) async {
    Database db = await instance.database;
    return await db.query(table, where: "id = $name");
  }

  Future<bool> queryWord(name) async {
    Database db = await instance.database;
    final list = await db.query(table, where: "word = '$name'");
    print(list);
    if (list.length != 0) return true;
    return false;
  }
}
