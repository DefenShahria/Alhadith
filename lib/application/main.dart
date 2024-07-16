import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:alhadith/data/dataService.dart'; // Adjust the import path as per your project structure
import 'apk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final DatabaseService databaseService = DatabaseService();
  await databaseService.initDatabase();
  Get.put(databaseService);
  runApp(const MyApp());
}
