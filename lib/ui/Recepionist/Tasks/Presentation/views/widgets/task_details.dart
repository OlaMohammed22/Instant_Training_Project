//yes
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/ui/Tasks/all_users_task_view.dart';

import '../../../../../../bloc/bloc.dart';
import '../../../../../../bloc/bloc_state.dart';
import '../../../../../../models/Task_model.dart';
import '../../../../../../repository/repository.dart';

class TaskDetailsPage extends StatelessWidget {
  late int task_id;
  TaskDetailsPage(this.task_id);
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return


      BlocProvider(
        create: (context) =>
        TaskDetailsBloc(
          RepositoryProvider.of<TaskRepository>(context),
        )
          ..add(LoadTaskDetailsEvent(task_id)),

        child: BlocBuilder<TaskDetailsBloc, TaskDetailsState>(
        builder: (context, state) {


      if (state is TaskDetailsLoadingState) {
        print("loadeing");
        return  CircularProgressIndicator();
      }
      if (state is TaskDetailsLoadedState) {

        TaskDetails task = state.task ;
        List<Todo> todosList = task.to_do;

        print(task.user.first_name);        return

          Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
              title: Text(
                  "Tasks Details", style: TextStyle(color: Colors.black)),
              centerTitle: true,
            ),
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: task.task_name,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/rr.png'),
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${task.user.first_name} ${task.user.last_name}",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Specialist - ${task.user.specialist}",
                              style: TextStyle(color: Colors.teal)),
                        ],
                      ),
                      Spacer(),
                      Text("${task.user.birthday}", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                      task.description

                  ),
                  SizedBox(height: 10),

                  SizedBox(height: 16),
                  Text("To do", style: TextStyle(fontWeight: FontWeight.bold)),
                  Column(
                    children:

                    List.generate(todosList.length, (index) {
                      return CheckboxListTile(
                        value: index == 1,
                        onChanged: (bool? value) {
value:value;
                        },
                        title: Text(todosList[index].title),
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Colors.teal,
                      );
                    }),
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Add Note",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(
                            builder: (context) {
                          return AllUsersTaskView();
                        },));
                      },
                      child: Text("Finish Task",
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          );
      }
      if (state is TaskDetailsErrorState) {
        print("error!!!");
        // List<UserModel> userList = state.users;
        //  print(userList.length);
        return Center(child: Text("error!!!!"),);
      }
      print("no thing");
      return Container();
        }
        )

    );
  }
}
