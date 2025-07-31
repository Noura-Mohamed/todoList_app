
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/tasks_cubit.dart';

class TimePickerField extends StatefulWidget {
  const TimePickerField({super.key});

  @override
  _TimePickerFieldState createState() => _TimePickerFieldState();
}

class _TimePickerFieldState extends State<TimePickerField> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _pickTime() async {
    final cubit = context.read<TasksCubit>();
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: cubit.selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      cubit.updateTime(picked); 
      _controller.text = picked.format(context); 
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedTime = context.watch<TasksCubit>().selectedTime;

    if (selectedTime != null) {
      _controller.text = selectedTime.format(context);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Time',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 16),
            child: TextField(
              controller: _controller,
              readOnly: true,
              onTap: _pickTime,
              decoration: InputDecoration(
                hintText: 'Choose time',
                hintStyle: TextStyle(color: Color(0xffB9A6A6)),
                prefixIcon: Icon(Icons.access_time),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
