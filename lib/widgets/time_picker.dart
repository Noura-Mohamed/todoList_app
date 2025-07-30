import 'package:flutter/material.dart';

class TimePickerField extends StatefulWidget {
  const TimePickerField({super.key});

  @override
  _TimePickerFieldState createState() => _TimePickerFieldState();
}

class _TimePickerFieldState extends State<TimePickerField> {
  TimeOfDay? selectedTime;
  final TextEditingController _controller = TextEditingController();

  Future<void> _pickTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
        _controller.text = picked.format(context); 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Time',
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.only(top: 8 ,bottom:16 ),
            child: TextField(
              controller: _controller,
              readOnly: true, 
              onTap: _pickTime,
              decoration: InputDecoration(
                hintText: 'Choose time',
                hintStyle: TextStyle(
                  color: Color(0xffB9A6A6)
                ),
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
