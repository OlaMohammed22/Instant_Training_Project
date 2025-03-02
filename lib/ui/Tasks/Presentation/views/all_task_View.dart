// yes
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/task_Item.dart';
import 'package:untitled36/ui/Recepionist/Tasks/Presentation/views/widgets/task_details.dart';

import '../../../../bloc/bloc.dart';
import '../../../../bloc/bloc_event.dart';
import '../../../../bloc/bloc_state.dart';
import '../../../../models/Task_model.dart';
import '../../../../repository/repository.dart';

class AllTasksListView extends StatelessWidget {
  const AllTasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
        TaskBloc(
          RepositoryProvider.of<TaskRepository>(context),
        )
          ..add(LoadTaskEvent()),

            child: BlocBuilder<TaskBloc, TaskState>(
                builder: (context, state) {


                  if (state is TaskLoadingState) {
                    print("loadeing");
                    return  CircularProgressIndicator();
                  }
                  if (state is TaskLoadedState) {
                    List<TaskModel> tasksList = state.tasks;
                    return Expanded(child:
                      ListView.builder(
                        itemCount: tasksList.length,

                        itemBuilder: (_, index) {

                          return
                            InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TaskDetailsPage(tasksList[index].id);
                                  },
                                ),
                              );
                            },
                            child: TaskItem(
                              created_at:tasksList[index].created_at ,
                              task_name:tasksList[index].task_name ,
                              id:tasksList[index].id ,
                              status:tasksList[index].status ,
                              isPending: Random().nextBool(),
                            ),
                          );
                        },
                      ));

                  }
                  if (state is TaskErrorState) {
                    print("error");
                    // List<UserModel> userList = state.users;
                    //  print(userList.length);
                    return Center(child: Text("error"),);
                  }
                  print("no thing");
                  return Container();
                }
            )

        );




  }
}
