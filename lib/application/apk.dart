import 'package:alhadith/data/contollerBinding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../presentation/ui/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const AlhadithDetailsPage(),
      initialBinding: ControllerBinder(),


    );
  }
}