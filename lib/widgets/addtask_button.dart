import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/tasks_cubit.dart';

class AddtaskButton extends StatelessWidget {
  const AddtaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TasksCubit>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(350, 55),
          backgroundColor: Color(0xff9C9494),
          foregroundColor: Colors.white,
          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {
          final cubit = context.read<TasksCubit>();
          cubit.addTask();
          Navigator.pop(context); 
        },
        child: Text('Add task'),
      ),
    );
  }
}
