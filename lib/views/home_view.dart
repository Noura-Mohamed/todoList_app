import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/controller/task_state.dart';
import 'package:todo_app/controller/tasks_cubit.dart';
import 'package:todo_app/views/all_tasks.dart';
import 'package:todo_app/widgets/appbar.dart';
import 'package:todo_app/widgets/category_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TasksCubit, TaskState>(
        builder: (context, state) {
          final cubit = context.read<TasksCubit>();

          return Column(
            children: [
              AppbarWidget(),
              InkWell(
                onTap: () {
                  context.read<TasksCubit>().updateCategory("");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTasks();
                      },
                    ),
                  );
                },
                child: CategoryCard(
                  counttask: cubit.allTasks.length,
                  title: 'All Tasks',
                  icon: Icon(Icons.today),
                  color: Color(0xff7ED49B),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<TasksCubit>().updateCategory("Planned");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTasks();
                      },
                    ),
                  );
                },
                child: CategoryCard(
                  counttask: cubit.getTasksByCategory('Planned').length,
                  title: 'Planned',
                  icon: Icon(Icons.playlist_add),
                  color: Color(0xffBBD8DF),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<TasksCubit>().updateCategory("Personal");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTasks();
                      },
                    ),
                  );
                },
                child: CategoryCard(
                  counttask: cubit.getTasksByCategory('Personal').length,
                  title: 'Personal',
                  icon: Icon(Icons.person),
                  color: Color(0xffFABD9C),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<TasksCubit>().updateCategory("Work");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTasks();
                      },
                    ),
                  );
                },
                child: CategoryCard(
                  counttask: cubit.getTasksByCategory('Work').length,
                  title: 'Work',
                  icon: Icon(Icons.work),
                  color: Color(0xffD9D9D9),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<TasksCubit>().updateCategory("Shopping");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTasks();
                      },
                    ),
                  );
                },
                child: CategoryCard(
                  counttask: cubit.getTasksByCategory('Shopping').length,
                  title: 'Shopping',
                  icon: Icon(Icons.shop_2),
                  color: Color(0xff4A9BAE),
                ),
              ),
              InkWell(
                onTap: () {
                  context.read<TasksCubit>().updateCategory("Study");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AllTasks();
                      },
                    ),
                  );
                },
                child: CategoryCard(
                  counttask: cubit.getTasksByCategory('Study').length,
                  title: 'Study',
                  icon: Icon(Icons.book),
                  color: Color(0xff9C9494),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
