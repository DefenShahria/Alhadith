import 'dart:io';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import '../data/modelData.dart';

class DatabaseService {
  late Database _database;

  Future<void> initDatabase() async {
    _database = await _init();
  }

  Future<Database> _init() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "hadith_db.db");


    bool databaseExists = await File(path).exists();

    if (!databaseExists) {

      ByteData data = await rootBundle.load(join("assets", "hadith_db.db"));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
    }

    return await openDatabase(path);
  }

  Future<List<Chapter>> getChapters() async {
    List<Map<String, dynamic>> results = await _database.query('chapter');
    return results.map((map) => Chapter.fromMap(map)).toList();
  }

  Future<List<Book>> getBooks() async {
    List<Map<String, dynamic>> results = await _database.query('books');
    return results.map((map) => Book.fromMap(map)).toList();
  }

  Future<List<Hadith>> getHadiths() async {
    List<Map<String, dynamic>> results = await _database.query('hadith');
    return results.map((map) => Hadith.fromMap(map)).toList();
  }

  Future<List<Section>> getSections() async {
    List<Map<String, dynamic>> results = await _database.query('section');
    return results.map((map) => Section.fromMap(map)).toList();
  }
}
