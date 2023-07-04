import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DefaultVehicleObject {
  final String vehicleName;
  final String vehicleTankSize;

  DefaultVehicleObject({
    required this.vehicleName,
    required this.vehicleTankSize,
  });

  Map<String, dynamic> toMap() {
    return {
      'vehicle_name': vehicleName,
      'vehicle_tank_size': vehicleTankSize,
    };
  }
}

class DefaultVehicleDatabase {
  static const _databaseName = 'default_vehicle.db';
  static const _databaseVersion = 1;

  static const table = 'default_vehicle';
  static const columnVehicleName = 'vehicle_name';
  static const columnVehicleTankSize = 'vehicle_tank_size';

  static Database? _database;

  DefaultVehicleDatabase._();

  static final DefaultVehicleDatabase instance = DefaultVehicleDatabase._();

  Future<Database> get database async {
    if (_database == null) {
      _database = await _initDatabase();
    }
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
        $columnVehicleName TEXT NOT NULL,
        $columnVehicleTankSize TEXT NOT NULL
      )
    ''');
    await db.insert(
      table,
      DefaultVehicleObject(
        vehicleName: 'No Data',
        vehicleTankSize: '0',
      ).toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertDefaultVehicle(DefaultVehicleObject defaultVehicle) async {
    final db = await database;
    await db.delete(table);
    await db.insert(
      table,
      defaultVehicle.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<DefaultVehicleObject> defaultVehicle() async {
    final db = await database;
    final tables =
        await db.query('sqlite_master', where: 'name = ?', whereArgs: [table]);
    if (tables.isEmpty) {
      await _onCreate(db, _databaseVersion);
    }
    final maps = await db.query(table);
    return DefaultVehicleObject(
      vehicleName: maps[0][columnVehicleName] as String,
      vehicleTankSize: maps[0][columnVehicleTankSize] as String,
    );
  }
}
