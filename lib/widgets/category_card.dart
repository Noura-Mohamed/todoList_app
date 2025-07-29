import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.title, required this.icon, required this.color});

  final String title;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: icon,
          title: Text(title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),),
          subtitle: Text('4 Tasks'),
          trailing: Icon(Icons.settings),
        ),
      ),
    );
  }
}
