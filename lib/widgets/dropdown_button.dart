import 'package:flutter/material.dart';

class DropButton extends StatefulWidget {
  const DropButton({super.key});

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  @override
  String? selectedCategory;
  final List<String> categories = [
    'Planned',
    'Personal',
    'Work',
    'Shopping',
    'Study',
  ];

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Categories',
          style:TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.only(top:8),
            child: DropdownButtonFormField<String>(
              value: selectedCategory,
              decoration: InputDecoration(
                hintText:'Select Category',
                hintStyle: TextStyle(
                  color: Color(0xffB9A6A6)
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              items: categories.map((category) {
                return DropdownMenuItem(
                  value: category,
                  child: Text(category),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCategory = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
