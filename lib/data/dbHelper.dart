import 'dart:io';

import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper{
Future initDb() async{
  final dbPath = await getDatabasesPath();
  final path = join(dbPath, "sample.db"); /// db file name
  final exist = await databaseExists(path);
  if(exist){

    print("db already exits");
  }else{

    print("db not exits");

    try{
      await Directory(dirname(path)).create(recursive: true);
    }catch(_){}
    ByteData data = await rootBundle.load(join("assets", "hadith.db"));
    List<int> bytes = data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
    await File(path).writeAsBytes (bytes, flush: true);
    print("db copied");
  }
  await openDatabase(path);
  }
  }