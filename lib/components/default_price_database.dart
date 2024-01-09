import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DefaultPriceObject {
  final String fuelPrice;
  final String placeOfPurchase;

  DefaultPriceObject({
    required this.fuelPrice,
    required this.placeOfPurchase,
  });

  Map<String, dynamic> toMap() {
    return {
      'fuel_price': fuelPrice,
      'place_of_purchase': placeOfPurchase,
    };
  }
}

class DefaultPriceDatabase {
  static const _databaseName = 'default_price.db';
  static const _databaseVersion = 1;

  static const table = 'default_price';
  static const columnFuelPrice = 'fuel_price';
  static const columnPlaceOfPurchase = 'place_of_purchase';

  static Database? _database;

  DefaultPriceDatabase._();

  static final DefaultPriceDatabase instance = DefaultPriceDatabase._();

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
        $columnFuelPrice TEXT NOT NULL,
        $columnPlaceOfPurchase TEXT NOT NULL
      )
    ''');
    await db.insert(
      table,
      DefaultPriceObject(fuelPrice: '0', placeOfPurchase: 'No data').toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertDefaultPrice(DefaultPriceObject defaultPrice) async {
    final db = await database;
    await db.delete(table);
    await db.insert(
      table,
      defaultPrice.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<DefaultPriceObject> defaultPrice() async {
    final db = await database;
    final tables =
        await db.query('sqlite_master', where: 'name = ?', whereArgs: [table]);
    if (tables.isEmpty) {
      await _onCreate(db, _databaseVersion);
    }
    final maps = await db.query(table);
    return DefaultPriceObject(
      fuelPrice: maps[0][columnFuelPrice] as String,
      placeOfPurchase: maps[0][columnPlaceOfPurchase] as String,
    );
  }
}
