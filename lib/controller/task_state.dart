import 'package:todo_app/models/task_model.dart';

abstract class TaskState {}

class TaskInitialState extends TaskState{}

class AddTaskState extends TaskState{}

class DeleteTaskState extends TaskState{}

class TaskErrorState extends TaskState {
  final String message;
  TaskErrorState(this.message);
}

class TaskCategoryFilteredState extends TaskState {
  final List<Task> filteredTasks;
  TaskCategoryFilteredState(this.filteredTasks);
}

class TaskStatusChangedState extends TaskState{}

class TaskCategoryUpdated extends TaskState{}

class TaskTimeUpdated extends TaskState{}