import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/task_state.dart';
import 'package:todo_app/models/task_model.dart';

class TasksCubit extends Cubit<TaskState> {
  TasksCubit() : super(TaskInitialState());

  List<Task> allTasks = [];

  TextEditingController newTask = TextEditingController();
  String? selectedCategory;
  TimeOfDay? selectedTime;

  void addTask() {
    if (newTask.text.isNotEmpty &&
        selectedCategory != null &&
        selectedTime != null) {
      final task = Task(
        title: newTask.text,
        category: selectedCategory!,
        time: selectedTime!,
      );
      allTasks.add(task);
      emit(AddTaskState());
      newTask.clear();
    } else {
      emit(TaskErrorState('Error adding task'));
    }
  }

  List<Task> get selectedCategoryTasks {
    if (selectedCategory == null || selectedCategory!.isEmpty) {
      return allTasks;
    }
    return allTasks.where((task) => task.category == selectedCategory).toList();
  }

  List<Task> getTasksByCategory(String category) {
  return allTasks.where((task) => task.category == category).toList();
}


  void toggleStatus(int index) {
    allTasks[index].isDone = !allTasks[index].isDone;
    emit(TaskStatusChangedState());
  }

  void deleteTask(int index) {
    allTasks.removeAt(index);
    emit(DeleteTaskState());
  }

  void updateCategory(String category) {
    selectedCategory = category;
    emit(TaskCategoryUpdated());
  }

  void updateTime(TimeOfDay time) {
    selectedTime = time;
    emit(TaskTimeUpdated());
  }
}
