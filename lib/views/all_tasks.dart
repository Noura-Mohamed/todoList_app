import 'package:flutter/material.dart';
import 'package:todo_app/widgets/appbar.dart';
import 'package:todo_app/widgets/model_sheet.dart';

class AllTasks extends StatelessWidget {
  const AllTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
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
      body: Column(children: [AppbarWidget()]),
    );
  }
}

