import 'package:flutterlabs/core/services/database/database_tables.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

/// this is the local database class, it's responsible for starting and
/// manipulating it


class LocalDatabase {
  static Database? _instance;

  /// Returns the opened local database instance.
  static Future<Database> getInstance() async {
    if (_instance != null) {
      return _instance!;
    }

    _instance = await _init();
    return _instance!;
  }

  /// Initializes the database, creates the tables on first run.
  static Future<Database> _init() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'flutterLabs.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await createTables(db);
      },
    );
  }
}
