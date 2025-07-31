import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/task_state.dart';
import 'package:todo_app/controller/tasks_cubit.dart';
import 'package:todo_app/widgets/model_sheet.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ToDo List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xffD0BAD4),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: Color(0xffD9D9D9),
            context: context,
            builder: (context) {
              return ModelSheet();
            },
          );
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<TasksCubit, TaskState>(
              builder: (context, state) {
                final cubit = context.read<TasksCubit>();
                final tasks = cubit.selectedCategoryTasks;
                final category = cubit.selectedCategory?.isEmpty ?? true
                    ? 'All'
                    : cubit.selectedCategory!;

                if (tasks.isEmpty) {
                  return Center(child: Text("No tasks yet"));
                }

                return ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return ListTile(
                      leading: Checkbox(
                        value: task.isDone,
                        onChanged: (_) {
                          context.read<TasksCubit>().toggleStatus(index);
                        },
                      ),
                      title: Text(
                        task.title,
                        style: TextStyle(
                          decoration: task.isDone
                              ? TextDecoration.lineThrough
                              : null,
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        '${task.category} • ${task.time.format(context)}',
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context.read<TasksCubit>().deleteTask(index);
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
