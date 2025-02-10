import 'package:equatable/equatable.dart';

abstract class Bloc_event {}

class ChangingTheTab extends Bloc_event {
  final int tabIndex;
  
  ChangingTheTab(this.tabIndex);
}
abstract class FingerprintEvent extends Equatable {
  const FingerprintEvent();

  @override
  List<Object> get props => [];
}


class VerifyFingerprint extends FingerprintEvent {}
