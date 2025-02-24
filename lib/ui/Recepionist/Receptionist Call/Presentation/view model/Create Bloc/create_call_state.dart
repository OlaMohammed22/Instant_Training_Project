part of 'create_call_bloc.dart';

class CreateCallState extends Equatable {
  const CreateCallState();

  @override
  List<Object> get props => [];
}

class CreateCallInitial extends CreateCallState {}

class CreateCallLoading extends CreateCallState {}

class CreateCallSuccess extends CreateCallState {}

class CreateCallFailure extends CreateCallState {
  final String errMessage;

  CreateCallFailure({required this.errMessage});
}
