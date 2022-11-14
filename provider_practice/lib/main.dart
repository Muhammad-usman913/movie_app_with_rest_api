
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/home_screen.dart';
import 'package:provider_practice/provider/count_provider.dart';
import 'package:provider_practice/provider/example_one_provider.dart';
import 'package:provider_practice/provider/favourite_provider.dart';
import 'package:provider_practice/provider/login_provider.dart';
import 'package:provider_practice/provider/theme_changer.dart';
import 'package:provider_practice/screen/count_example.dart';
import 'package:provider_practice/screen/example_one.dart';
import 'package:provider_practice/screen/favourite/favourite_screen.dart';
import 'package:provider_practice/screen/login.dart';
import 'package:provider_practice/screen/theme_screen.dart';
import 'package:provider_practice/statefull_widget_screen.dart';
import 'package:provider_practice/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) =>ExampleOneProvider()),
        ChangeNotifierProvider(
            create: (_) =>FavouriteProvider()),
        ChangeNotifierProvider(
            create: (_) =>ThemeChanger()),
        ChangeNotifierProvider(
            create: (_) =>LoginProvider()),

      ],

      child: Builder(
        builder: (BuildContext context){
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.red,
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              primaryColor: Colors.red,
              primarySwatch: Colors.red
            ),
            home: Login(),
          );
        },
      ),
    );
  }
}