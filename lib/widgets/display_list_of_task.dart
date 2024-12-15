import 'package:flutter/material.dart';
import 'package:todo/data/data.dart';
import 'package:todo/utils/extensions.dart';
import 'package:todo/widgets/widget.dart';

class DisplayListOfTask extends StatelessWidget {
  const DisplayListOfTask(
      {super.key, required this.tasks, this.isCompletedTask = false});

  final List<Task> tasks;
  final bool isCompletedTask;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTask ? deviceSize.height * 0.25 : deviceSize.height * 0.3;

    final emptyTaskMassage = isCompletedTask
        ? 'There is no completed task yet'
        : 'There is no task todo!';
    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTaskMassage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.builder(
              itemCount: tasks.length,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                final task = tasks[index];
                return Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: Center(
                        child: Icon(task.category.icon),
                      ),
                    ),
                  ],
                );
              }),
    );
  }
}
