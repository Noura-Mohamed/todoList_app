import 'package:flutter/material.dart';
import 'package:todo_app/views/home_view.dart';
import 'package:todo_app/widgets/appbar.dart';
import 'package:todo_app/widgets/category_card.dart';

void main() {
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView()
    );
  }
}

