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

    await db.execute('''
    CREATE TABLE bike_info (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      fuel_capacity REAL NOT NULL
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
}
