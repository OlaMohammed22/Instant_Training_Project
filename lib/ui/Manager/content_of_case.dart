import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:untitled36/bloc/bloc.dart';
import 'package:untitled36/bloc/bloc_state.dart';
import 'package:untitled36/ui/Manager/case_index_one.dart';
import 'package:untitled36/ui/Manager/case_index_two.dart';
import 'package:untitled36/ui/Manager/case_index_zero.dart';

import '../../Data/Show_details_model.dart';
import '../presentation/case_index_one.dart';

class ContentOfCase extends StatelessWidget {
  Show_details my_case;
  ContentOfCase(this.my_case);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CaseBloc, Selected_tab>(
      builder: (context, state) {
        if (state.selectedtabindex == 0) {
          print("zeroo");
          return case_index_zero(my_case);
        } else if (state.selectedtabindex == 1) {
          print("onnnnne");
          return case_index_one();
        } else {
          return case_index_two();
        }
      },
    );
  }
}
