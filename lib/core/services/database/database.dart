import 'dart:async';
import 'dart:io';
import 'package:kassa/core/services/database/consts.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "data.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE ${ConstantsForData.orders} ("
          "id INTEGER PRIMARY KEY,"
          "total INTEGER,"
          "table_id INTEGER,"
          "created_at TEXT"
          ")");
      await db.execute("CREATE TABLE ${ConstantsForData.orderProducts} ("
          "id INTEGER PRIMARY KEY,"
          "product_id INTEGER,"
          "order_id INTEGER,"
          "count INTEGER"
          ")");
    });
  }

}