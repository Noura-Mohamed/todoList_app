import 'package:flutter/material.dart';
import 'package:todo_app/widgets/addtask_button.dart';
import 'package:todo_app/widgets/dropdown_button.dart';
import 'package:todo_app/widgets/textfeild_widget.dart';
import 'package:todo_app/widgets/time_picker.dart';

class ModelSheet extends StatefulWidget {
  const ModelSheet({super.key});

  @override
  State<ModelSheet> createState() => _ModelSheetState();
}

class _ModelSheetState extends State<ModelSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 16, left: 16),
      child: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            TextFieldWidget(),
            DropButton(),
            TimePickerField(),
            AddtaskButton()
          ],
        ),
      ),
    );
  }
}





