import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/Doctor/Content_of_case.dart';

import '../../Data/Show_details_model.dart';
import '../../Data/Show_details_repo.dart';
import '../../Data/logout_repo.dart';
import '../Manager/content_of_case.dart';
import 'Add_nurse_button.dart';
import 'Medical_measurment.dart';
import 'Medical_record.dart';



class Case_details extends StatelessWidget{
  final int caseId;
  Case_details(this.caseId);
  final List <String> tabs=['Case','Medical record','Medical measurment'];
  @override
  Widget build(BuildContext context) {
  return

    BlocProvider(
        create: (context) =>
        ShowCaseBloc(
          RepositoryProvider.of<CaseDetailsRepository>(context),
        )
          ..add(LoadCaseDetailsEvent(caseId)),

        child: BlocBuilder<ShowCaseBloc,ShowDetailsState>(
        builder: (context, state) {


    if (state is ShowDetailsLoadingState) {
      print("loadeing");
      return  CircularProgressIndicator();
    }
    if (state is ShowDetailsLoadedState) {

      Show_details my_case = state.casedetails;

      return


        Scaffold(
          appBar: AppBar(
            title: (
                Text('Case Details')),
            centerTitle: true,

          ),
          body: ListView(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BlocBuilder<CaseBloc, Selected_tab>(
                builder: (context, state) {
                  return Row(

                    children: List.generate(tabs.length, (index) {
                      return Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: ChoiceChip(
                            label: Container(
                                height: 20,
                                width: 900,
                                decoration: BoxDecoration(

                                ),
                                child: Center(child: Text(tabs[index],style: TextStyle(fontSize: 12),))),
                            selected: state.selectedtabindex == index,
                            selectedColor: Color(0xFF22C7B8),
                            onSelected: (_) {
                              context.read<CaseBloc>().add(ChangingTheTab(index));
                            },
                          ),
                        ),
                      );
                    }),

                  );
                },
              ),
              SizedBox(height: 10,),
            content_of_case(my_case),

              SizedBox(height: 70,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SearchScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        Text(
                          'Add Nurse',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF22C7B8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      _showBottomSheet(context);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.add, color: Colors.white),
                        Text(
                          'Request',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF22C7B8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60,),
              Container(
                margin: EdgeInsets.all(16.0),
                height: 50,
                width: 1600,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red
                ),
                child: ElevatedButton(onPressed: (){


                  updateData(context, 1, "Updated Name", "updatedemail@example.com");

                },
                  child: Text('End Case',
                    style: TextStyle(
                        color: Colors.white,fontSize: 15)
                    ,)
                  ,style: ElevatedButton.styleFrom(
                      backgroundColor:Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),),
              ),
              SizedBox(height: 3,),



            ],
          ),
        );
    }
    return Text("error!!!!");

        }));
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    backgroundColor: Colors.white,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF22C7B8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MedicalRecord(),
                              ),
                            );
                          },
                          icon: Icon(Icons.assignment),
                        ),
                        SizedBox(height: 5),
                        Text('Medical record'),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFF22C7B8),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MedicalMeasurment(),
                              ),
                            );
                          },
                          icon: Icon(Icons.speed),
                        ),
                        SizedBox(height: 5),
                        Text('Medical measurement'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Request Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Request",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      );
    },
  );
}