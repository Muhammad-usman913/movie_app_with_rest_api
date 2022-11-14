import 'package:flutter/material.dart';
import 'package:rest_api/example_five.dart';
import 'package:rest_api/example_three.dart';
import 'package:rest_api/example_two.dart';
import 'package:rest_api/home_screen.dart';
import 'package:rest_api/sign_up_screen.dart';
import 'package:rest_api/upload_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UploadImageScreen(),
    );
  }
}