
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'models.dart';







class DbHelper {
  static final DbHelper _instance = DbHelper._internal();
  static Database? _database;

  final String tableName = 'TabelPets';
  final String columnId = 'id';
  final String columnName = 'Name';
  final String columnBreed = 'Breed';
  final String columnAge = 'Age';
  final String columnLocation = 'Location';

  DbHelper._internal();
  factory DbHelper() => _instance;

  Future<Database?> get _db async {
    if (_database != null) {
      return _database;
    }
    _database = await _initDb();
    return _database;
  }

  Future<Database?> _initDb() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'pet.db');

    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    var sql = "CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY, "
        "$columnName TEXT,"
        "$columnBreed TEXT,"
        "$columnAge TEXT,"
        "$columnLocation TEXT)";
    await db.execute(sql);
  }

  Future<int?> savePet(Pet pegawai) async {
    var dbClient = await _db;
    return await dbClient!.insert(tableName, pegawai.toMap());
  }

  Future<List?> getAllPet() async {
    var dbClient = await _db;
    var result = await dbClient!.query(tableName, columns: [
      columnId,
      columnName,
      columnBreed,
      columnAge,
      columnLocation
    ]);

    return result.toList();
  }

  Future<int?> updatePet(Pet pegawai) async {
    var dbClient = await _db;
    return await dbClient!.update(tableName, pegawai.toMap(),
        where: '$columnId = ?', whereArgs: [pegawai.id]);
  }

  Future<int?> deletePet(int id) async {
    var dbClient = await _db;
    return await dbClient!
        .delete(tableName, where: '$columnId = ?', whereArgs: [id]);
  }
}
