part of 'sign_in_bloc.dart';

sealed class SignInEvent extends Equatable {
  const SignInEvent();

  @override
  List<Object> get props => [];
}

class SignInRequired extends SignInEvent {
  const SignInRequired({required this.email, required this.password});
  final String email;
  final String password;

  @override
  List<Object> get props => [];
}

class SignOut extends SignInEvent {
  const SignOut();

  @override
  List<Object> get props => [];
}
