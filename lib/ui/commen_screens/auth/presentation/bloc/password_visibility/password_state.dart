import 'package:equatable/equatable.dart';

class PasswordState extends Equatable {
  final bool isPasswordVisible;

  const PasswordState({required this.isPasswordVisible});

  PasswordState copyWith({bool? isPasswordVisible}) {
    return PasswordState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
    );
  }

  @override
  List<Object> get props => [isPasswordVisible];
}
