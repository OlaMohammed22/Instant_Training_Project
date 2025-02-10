import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_event.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/Doctor/Content_of_case.dart';

class Case_details extends StatelessWidget {
  final List<String> tabs = ['Case', 'Medical record', 'Medical measurment'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Case Details')),
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
                            decoration: BoxDecoration(),
                            child: Center(
                                child: Text(
                              tabs[index],
                              style: TextStyle(fontSize: 12),
                            ))),
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
          SizedBox(
            height: 10,
          ),
          Expanded(child: content_of_case()),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
