import 'package:flutter/material.dart';
import 'package:todo_app/views/all_tasks.dart';
import 'package:todo_app/widgets/appbar.dart';
import 'package:todo_app/widgets/category_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return AllTasks();
                  },
                ),
              );
            },
            child: CategoryCard(
              title: 'All Tasks',
              icon: Icon(Icons.today),
              color: Color(0xff7ED49B),
            ),
          ),
          CategoryCard(
            title: 'Planned',
            icon: Icon(Icons.playlist_add),
            color: Color(0xffBBD8DF),
          ),
          CategoryCard(
            title: 'Personal',
            icon: Icon(Icons.person),
            color: Color(0xffFABD9C),
          ),
          CategoryCard(
            title: 'Work',
            icon: Icon(Icons.work),
            color: Color(0xffD9D9D9),
          ),
          CategoryCard(
            title: 'Shopping',
            icon: Icon(Icons.shop_2),
            color: Color(0xff4A9BAE),
          ),
          CategoryCard(
            title: 'Study',
            icon: Icon(Icons.book),
            color: Color(0xff9C9494),
          ),
        ],
      ),
    );
  }
}
