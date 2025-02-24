part of 'get_all_calls_bloc.dart';

class GetAllCallsEvent extends Equatable {
  const GetAllCallsEvent();

  @override
  List<Object> get props => [];
}

class FilterCallsByDate extends GetAllCallsEvent {
  final String selectedDate;

  const FilterCallsByDate(this.selectedDate);

  @override
  List<Object> get props => [selectedDate];
}
