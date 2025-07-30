import 'package:flutter/material.dart';

class AddtaskButton extends StatelessWidget {
  const AddtaskButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(350, 55),
          backgroundColor: Color(0xff9C9494),
          foregroundColor: Colors.white,
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12))
          ),
        onPressed: (){}, 
        child: Text('Add task')),
    );
  }
}