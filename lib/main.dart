import 'package:flutter/material.dart';
import 'package:dashboard/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.purple,
          ),
          textTheme: TextTheme(
              button: TextStyle(
            color: Colors.purple,
            fontWeight: FontWeight.w500,
          ))),
      title: 'Mount Alpha',
      routes: {
        '/': (context) => const IndexScreen(),
      },
      initialRoute: '/',
    );
  }
}
