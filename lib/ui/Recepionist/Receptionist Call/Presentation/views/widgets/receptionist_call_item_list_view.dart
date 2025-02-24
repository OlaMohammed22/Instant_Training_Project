import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/view%20model/Get%20All%20Calls/get_all_calls_bloc.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/Presentation/views/widgets/receptionist_call_item.dart';
import 'package:untitled36/ui/Recepionist/Receptionist%20Call/data/Models/receptionist_call_info_model/datum.dart';

class ReceptionistCallItemListView extends StatefulWidget {
  const ReceptionistCallItemListView({super.key});

  @override
  State<ReceptionistCallItemListView> createState() =>
      _ReceptionistCallItemListViewState();
}

class _ReceptionistCallItemListViewState
    extends State<ReceptionistCallItemListView> {
  List<Datum> filteredList = [];
  List<Datum> list = [];
  @override
  Widget build(BuildContext context) {
    final callsBloc = BlocProvider.of<GetAllCallsBloc>(context);
    return BlocConsumer<GetAllCallsBloc, GetAllCallsState>(
      listener: (context, state) {
        if (state is GetAllCallsSuccess) {
          list = state.receptionistCallInfoModel;
          if (callsBloc.filterByDate != '') {
            filteredList = [];
            list.forEach(
              (data) {
                if (data.createdAt == callsBloc.filterByDate) {
                  filteredList.add(data);
                }
              },
            );
          }
        }
      },
      builder: (context, state) {
        return Expanded(
          child: (state is GetAllCallsSuccess && list.length == 0)
              ? Center(
                  child: Text("No Calls"),
                )
              : (state is GetAllCallsSuccess &&
                      filteredList.length == 0 &&
                      callsBloc.filterByDate != '')
                  ? Center(
                      child: Text("No Calls"),
                    )
                  : (state is GetAllCallsSuccess && list.length > 0)
                      ? ListView.builder(
                          itemCount: filteredList.isEmpty
                              ? list.length
                              : filteredList.length,
                          itemBuilder: (context, index) {
                            return ReceptionistCallItem(
                              data: filteredList.isEmpty
                                  ? list[index]
                                  : filteredList[index],
                            );
                          },
                        )
                      : (state is GetAllCallsSuccess &&
                              filteredList.length == 0)
                          ? Center(
                              child: Text("No Calls"),
                            )
                          : state is GetAllCallsFailure
                              ? Center(
                                  child: Text("Error in Getting Calls"),
                                )
                              : Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.black,
                                  ),
                                ),
        );
      },
    );
  }
}
