part of 'sign_up_bloc.dart';

sealed class SignUpState extends Equatable {
  const SignUpState();

  @override
  List<Object> get props => [];
}

final class SignUpInitial extends SignUpState {}

final class SignUpProcess extends SignUpState {}

final class SignUpFailure extends SignUpState {
  final String? message;

  const SignUpFailure({required this.message});

  @override
  List<Object> get props => [];
}

final class SignUpSuccess extends SignUpState {}
