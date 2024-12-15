import 'package:flutter/material.dart';
import 'package:todo/config/config.dart';
import 'package:todo/screens/screens.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo',
      theme: AppTheme.light,
      home:HomeScreen(),
    );
  }
}