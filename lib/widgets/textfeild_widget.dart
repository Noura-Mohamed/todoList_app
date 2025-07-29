import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Title',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.only(top:8),
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Color(0xffB9A6A6)
                ),
                hintText: 'task title',
                filled: true,
                fillColor: Colors.white,
                enabledBorder:OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
