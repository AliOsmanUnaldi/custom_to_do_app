import 'package:flutter/material.dart';
import 'package:custom_to_do_app/pages/home_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{

  //init local db
  await Hive.initFlutter();

  //open a box
  var boc = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.orange.shade400)),
    );
  }
}
