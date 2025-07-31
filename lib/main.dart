import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/tasks_cubit.dart';
import 'package:todo_app/views/home_view.dart';

void main() {
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(), // أو AllTasks()
      ),
    );
  }
}
