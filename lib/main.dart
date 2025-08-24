import 'package:flutter/material.dart';
import 'package:messenger_screen_desgin/messenger_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MessengerScreen(),
      theme: ThemeData(),
    );
  }
}
