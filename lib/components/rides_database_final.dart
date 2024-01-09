import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:venom/components/ride_object.dart';

class RidesDatabaseFinal {
  static const _databaseName = 'finalrides.db';
  static const _databaseVersion = 1;

  static const table = 'rides';
  static const columnId = 'id';
  static const columnTimeTraveled = 'time_traveled';
  static const columnDistanceTravelled = 'distance_travelled';
  static const columnGasUsed = 'gas_used';
  static const columnGasPrice = 'gas_price';
  static const columnAverageSpeed = 'average_speed';

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, _databaseName);
    return await openDatabase(
      databasePath,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        $columnId INTEGER PRIMARY KEY,
        $columnTimeTraveled TEXT NOT NULL,
        $columnDistanceTravelled TEXT NOT NULL,
        $columnGasUsed TEXT NOT NULL,
        $columnGasPrice TEXT NOT NULL,
        $columnAverageSpeed TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertRide(Ride ride) async {
    final db = await database;
    return await db.insert(
      table,
      ride.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Ride>> rides() async {
    final db = await database;
    final maps = await db.query(table);
    return List.generate(maps.length, (i) {
      return Ride(
        id: maps[i][columnId] as int?,
        timeTraveled: maps[i][columnTimeTraveled] as String,
        distanceTravelled: maps[i][columnDistanceTravelled] as String,
        gasUsed: maps[i][columnGasUsed] as String,
        gasPrice: maps[i][columnGasPrice] as String,
        averageSpeed: maps[i][columnAverageSpeed] as String,
      );
    });
  }

  Future<Ride> getRide(int id) async {
    final db = await database;
    final maps = await db.query(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Ride(
        id: maps[0][columnId] as int?,
        timeTraveled: maps[0][columnTimeTraveled] as String,
        distanceTravelled: maps[0][columnDistanceTravelled] as String,
        gasUsed: maps[0][columnGasUsed] as String,
        gasPrice: maps[0][columnGasPrice] as String,
        averageSpeed: maps[0][columnAverageSpeed] as String,
      );
    } else {
      throw Exception('Vehicle not found');
    }
  }

  Future<void> deleteRide(int id) async {
    final db = await database;
    await db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  Future<List<Ride>> ridesList() async {
    final db = await database;
    final maps = await db.query(
      table,
      orderBy: '$columnId DESC',
    );
    return List.generate(maps.length, (i) {
      return Ride(
        id: maps[i][columnId] as int?,
        timeTraveled: maps[i][columnTimeTraveled] as String,
        distanceTravelled: maps[i][columnDistanceTravelled] as String,
        gasUsed: maps[i][columnGasUsed] as String,
        gasPrice: maps[i][columnGasPrice] as String,
        averageSpeed: maps[i][columnAverageSpeed] as String,
      );
    });
  }
}
