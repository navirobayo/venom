import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();

  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('fuel_prices.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE fuel_prices (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        price REAL NOT NULL
      )
    ''');
  }

  Future<int> insertFuelPrice(double price) async {
    final db = await instance.database;

    return await db.insert(
      'fuel_prices',
      {'price': price},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Map<String, dynamic>>> getFuelPrices() async {
    final db = await instance.database;

    return await db.query('fuel_prices');
  }

  Future<void> deleteAllFuelPrices() async {
    final db = await instance.database;

    await db.delete('fuel_prices');
  }

  Future<int> insertFuelCapacity(double capacity) async {
    final db = await instance.database;

    return await db.insert(
      'bike_info',
      {'fuel_capacity': capacity},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<double?> getFuelCapacity() async {
    final db = await instance.database;

    final result = await db.query('bike_info');

    if (result.isEmpty) return null;

    return result.first['fuel_capacity'] as double;
  }
}

Future<double> getTankSizeFromDatabase() async {
  final Database db = await openDatabase('my_database.db');
  final List<Map<String, dynamic>> result =
      await db.query('vehicle_info', limit: 1);
  return result[0]['tank_size'];
}

Future<double> getFuelPriceFromDatabase() async {
  final Database db = await openDatabase('my_database.db');
  final List<Map<String, dynamic>> result =
      await db.query('fuel_prices', limit: 1, orderBy: 'date DESC');
  return result[0]['price'];
}
