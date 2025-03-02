import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/Doctor/case_index_one.dart';
import 'package:untitled36/ui/Doctor/case_index_two.dart';

import '../../Data/Show_details_model.dart';
import '../presentation/case_index_one.dart';
import '../presentation/case_index_zero.dart';




class content_of_case extends StatelessWidget{
  Show_details my_case;
  content_of_case(this.my_case);
  @override
  Widget build(BuildContext context) {

   return BlocBuilder<CaseBloc, Selected_tab>(
    builder: (context, state) {
     if(state.selectedtabindex==0){
         return CaseIndexZero(my_case);
     }
     else if(state.selectedtabindex==1){
return CaseIndexOne(my_case);
     }
     else{
return case_index_two();
     }
    },
   );


  }
}
