import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:venom/components/default_vehicle_database.dart';
import 'package:venom/components/vehicle_object.dart';

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

  Future<Vehicle> getVehicle(int id) async {
    final db = await database;
    final maps = await db.query(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Vehicle(
        id: maps[0][columnId] as int?,
        name: maps[0][columnName] as String,
        tankCapacity: maps[0][columnTankCapacity] as String,
      );
    } else {
      throw Exception('Vehicle not found');
    }
  }

  Future<void> deleteVehicle(int id) async {
    final db = await database;
    final vehicle = await getVehicle(id);
    await db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
    final defaultVehicleDatabase = DefaultVehicleDatabase.instance;
    final defaultVehicle = await defaultVehicleDatabase.defaultVehicle();
    if (vehicle.name == defaultVehicle.vehicleName &&
        vehicle.tankCapacity == defaultVehicle.vehicleTankSize) {
      final vehicles = await vehiclesList();
      if (vehicles.isNotEmpty) {
        final nextVehicle = vehicles.first;
        await defaultVehicleDatabase.insertDefaultVehicle(DefaultVehicleObject(
          vehicleName: nextVehicle.name,
          vehicleTankSize: nextVehicle.tankCapacity,
        ));
      } else {
        await defaultVehicleDatabase.insertDefaultVehicle(DefaultVehicleObject(
          vehicleName: 'No Vehicle',
          vehicleTankSize: '0',
        ));
      }
    }
  }

  Future<List<Vehicle>> vehiclesList() async {
    final db = await database;
    final maps = await db.query(
      table,
      orderBy: '$columnId DESC',
    );
    return List.generate(maps.length, (i) {
      return Vehicle(
        id: maps[i][columnId] as int?,
        name: maps[i][columnName] as String,
        tankCapacity: maps[i][columnTankCapacity] as String,
      );
    });
  }
}
