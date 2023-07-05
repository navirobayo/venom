import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Ride {
  final int id;
  final String name;
  final String date;
  final String timeTraveled;
  final double distanceTravelled;
  final double gasUsed;
  final double gasPrice;
  final double averageSpeed;

  Ride({
    required this.id,
    required this.name,
    required this.date,
    required this.timeTraveled,
    required this.distanceTravelled,
    required this.gasUsed,
    required this.gasPrice,
    required this.averageSpeed,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'date': date,
      'time_traveled': timeTraveled,
      'distance_travelled': distanceTravelled,
      'gas_used': gasUsed,
      'gas_price': gasPrice,
      'average_speed': averageSpeed,
    };
  }

  factory Ride.fromMap(Map<String, dynamic> map) {
    return Ride(
      id: map['id'],
      name: map['name'],
      date: map['date'],
      timeTraveled: map['time_traveled'],
      distanceTravelled: map['distance_travelled'],
      gasUsed: map['gas_used'],
      gasPrice: map['gas_price'],
      averageSpeed: map['average_speed'],
    );
  }

  @override
  String toString() {
    return 'Ride{id: $id, name: $name, date: $date, timeTraveled: $timeTraveled, distanceTravelled: $distanceTravelled, gasUsed: $gasUsed, gasPrice: $gasPrice, averageSpeed: $averageSpeed}';
  }
}

class RidesDatabase {
  static final RidesDatabase instance = RidesDatabase._init();

  static Database? _database;

  RidesDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('rides.db');
    return _database!;
  }

  Future<List<Ride>> getAllRides() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('rides');
    return List.generate(maps.length, (i) {
      return Ride.fromMap(maps[i]);
    });
  }

  Future<void> deleteRide(int id) async {
    final db = await database;
    await db.delete(
      'rides',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> insertRide(Ride ride) async {
    final db = await database;
    await db.insert(
      'rides',
      ride.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''CREATE TABLE rides (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        date TEXT NOT NULL,
        time_traveled TEXT NOT NULL,
        distance_travelled REAL NOT NULL,
        gas_used REAL NOT NULL,
        gas_price REAL NOT NULL,
        average_speed REAL NOT NULL
      )''');
  }

  Future<Ride> read(int id) async {
    final db = await instance.database;
    final maps = await db.query(
      'rides',
      columns: RideFields.values,
      where: 'id = ?',
      whereArgs: [id],
    );
    if (maps.isNotEmpty) {
      return Ride.fromMap(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Ride>> readAll() async {
    final db = await instance.database;
    final orderBy = '${RideFields.date} DESC';
    final result = await db.query('rides', orderBy: orderBy);
    return result.map((json) => Ride.fromMap(json)).toList();
  }

  Future<int> delete(int id) async {
    final db = await instance.database;
    return await db.delete(
      'rides',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> close() async {
    final db = await instance.database;
    db.close();
  }
}

class RideFields {
  static const List<String> values = [
    id,
    name,
    date,
    timeTraveled,
    distanceTravelled,
    gasUsed,
    gasPrice,
    averageSpeed,
  ];

  static const String id = 'id';
  static const String name = 'name';
  static const String date = 'date';
  static const String timeTraveled = 'time_traveled';
  static const String distanceTravelled = 'distance_travelled';
  static const String gasUsed = 'gas_used';
  static const String gasPrice = 'gas_price';
  static const String averageSpeed = 'average_speed';
}
