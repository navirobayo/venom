import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:venom/components/vehicle_class.dart';

class VehicleDatabase {
  static const _databaseName = 'vehicles.db';
  static const _databaseVersion = 1;

  static const table = 'vehicles';
  static const columnId = 'id';
  static const columnName = 'name';
  static const columnTankCapacity = 'tank_capacity';

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
        $columnName TEXT NOT NULL,
        $columnTankCapacity TEXT NOT NULL
      )
    ''');
  }

  Future<int> insertVehicle(Vehicle vehicle) async {
    final db = await database;
    return await db.insert(
      table,
      vehicle.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Vehicle>> vehicles() async {
    final db = await database;
    final maps = await db.query(table);
    return List.generate(maps.length, (i) {
      return Vehicle(
        id: maps[i][columnId] as int?,
        name: maps[i][columnName] as String,
        tankCapacity: maps[i][columnTankCapacity] as String,
      );
    });
  }

  Future<void> deleteVehicle(int id) async {
    final db = await database;
    await db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
