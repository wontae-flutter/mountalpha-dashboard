import 'package:flutter/material.dart';
import 'package:dashboard/screen/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mount Alpha',
      routes: {
        '/': (context) => const IndexScreen(),
      },
      initialRoute: '/',
    );
  }
}
