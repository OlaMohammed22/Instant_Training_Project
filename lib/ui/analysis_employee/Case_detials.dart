import 'package:flutter/material.dart';
import 'package:untitled36/ui/analysis_employee/case_index_one.dart';
import 'package:untitled36/ui/analysis_employee/case_index_onepart2.dart';
import 'package:untitled36/ui/analysis_employee/case_index_zero.dart';

class CaseDetails extends StatefulWidget {
  @override
  CaseDetailsState createState() {
    return CaseDetailsState();
  }
}

class CaseDetailsState extends State<CaseDetails> {
  int selectedButton = 0; 
  
  final List<Map<String, dynamic>> options = [
    {"type": "text", "value": "Cases"},
    {"type": "text", "value": "Medical Measurement"},
    {"type": "icon", "value": Icons.medical_information},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Case Details'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Wrap(
              spacing: 10,
              children: [
                ...List.generate(options.length, (index) {
                  return ChoiceChip(
                    label: options[index]["type"] == "text"
                        ? Text(options[index]["value"]) 
                        : Icon(options[index]["value"]), 
                    selected: selectedButton == index,
                    onSelected: (bool selected) {
                      setState(() {
                        selectedButton = selected ? index : selectedButton;
                      });
                    },
                    selectedColor: Color(0xFF22C7B8),
                    labelStyle: TextStyle(
                      color: selectedButton == index ? Colors.white : Colors.black,
                    ),
                  );
                }),
              ],
            ),
          ),
          Expanded(child: Builder(builder: (context){
            if(selectedButton==0){
              return case_index_zero();
            }else if(selectedButton==1){
              return case_index_one();
            }else{
              return CaseIndexOnePart2();
            }
          }
          
          
          ))
        ],
      ),
    );
  }
}
