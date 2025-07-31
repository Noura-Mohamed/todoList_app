import 'package:flutter/material.dart';

class Task {
  final String title;
  final String category;
  final TimeOfDay time;
  bool isDone;

  Task({required this.title, required this.category, required this.time ,this.isDone = false});
}


class TaskData {
  static List<Task> allTasks = [];
}
