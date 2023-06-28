import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:venom/components/ride_object.dart';

class RideDatabase {
  static const _databaseName = 'rides.db';
  static const _databaseVersion = 1;

  static const table = 'rides';
  static const columnId = 'id';
  static const columnTimeTraveled = 'time_traveled';
  static const columnDistanceTravelled = 'distance_travelled';
  static const columnGasUsed = 'gas_used';
  static const columnGasPercentage = 'gas_percentage';
  static const columnGasPrice = 'gas_price';
  static const columnDate = 'date';
  static const columnTime = 'time';

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
        $columnTimeTraveled INTEGER NOT NULL,
        $columnDistanceTravelled REAL NOT NULL,
        $columnGasUsed REAL NOT NULL,
        $columnGasPercentage REAL NOT NULL,
        $columnGasPrice REAL NOT NULL,
        $columnDate TEXT NOT NULL,
        $columnTime TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertRide(RideObject ride) async {
    final db = await database;
    final id = await db.insert(
      table,
      ride.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    return id;
  }

  Future<List<RideObject>> rides() async {
    final db = await database;
    final maps = await db.query(table);
    return List.generate(maps.length, (i) {
      return RideObject(
        id: maps[i][columnId] as int?,
        timeTraveled: maps[i][columnTimeTraveled] as int,
        distanceTravelled: maps[i][columnDistanceTravelled] as double,
        gasUsed: maps[i][columnGasUsed] as double,
        gasPercentage: maps[i][columnGasPercentage] as double,
        gasPrice: maps[i][columnGasPrice] as double,
        date: maps[i][columnDate] as String,
        time: maps[i][columnTime] as String,
      );
    });
  }
}
