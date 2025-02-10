import 'package:equatable/equatable.dart';

class Selected_tab {
  final int selectedtabindex;

  Selected_tab({required this.selectedtabindex});

  Selected_tab copyWith({int? selectedtabindex}) {
    return Selected_tab(selectedtabindex: selectedtabindex ?? this.selectedtabindex);
  }
}


abstract class FingerprintState extends Equatable {
  const FingerprintState();

  @override
  List<Object> get props => [];
}

class FingerprintInitial extends FingerprintState {}

class FingerprintLoading extends FingerprintState {}

class FingerprintSuccess extends FingerprintState {}

class FingerprintFailure extends FingerprintState {} 