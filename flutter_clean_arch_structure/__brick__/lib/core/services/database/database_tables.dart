import 'package:sqflite/sqflite.dart';

/// This file contains the SQL tables creation for the local database.
/// All entities from domain layer are mapped here.
Future<void> createTables(Database db) async {



  /// EXAMPLE
  await db.execute('''
  
    CREATE TABLE example (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT NOT NULL,
      value REAL NOT NULL,
      
    
    );
  
  
   ''');


}