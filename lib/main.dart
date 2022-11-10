import 'package:flutter/material.dart';
import 'package:photo_search_app/presentation/main_screen/main_screen.dart';
import 'package:photo_search_app/presentation/main_screen/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainViewModel()),
      ],
      child: const MyApp()));
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}
