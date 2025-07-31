import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/tasks_cubit.dart';

class DropButton extends StatelessWidget {
  const DropButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<TasksCubit>();

    final List<String> categories = [
      'Planned',
      'Personal',
      'Work',
      'Shopping',
      'Study',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: DropdownButtonFormField<String>(
              value: categories.contains(cubit.selectedCategory)
                  ? cubit.selectedCategory
                  : null,

              decoration: InputDecoration(
                hintText: 'Select Category',
                hintStyle: TextStyle(color: Color(0xffB9A6A6)),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              items: categories.map((category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  cubit.updateCategory(value);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
