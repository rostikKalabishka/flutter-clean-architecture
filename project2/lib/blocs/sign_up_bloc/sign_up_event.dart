part of 'sign_up_bloc.dart';

sealed class SignUpEvent extends Equatable {
  const SignUpEvent();

  @override
  List<Object> get props => [];
}

class SignUpRequiredEvent extends SignUpEvent {
  final String password;
  final MyUser myUser;
  const SignUpRequiredEvent({
    required this.password,
    required this.myUser,
  });

  @override
  List<Object> get props => [password, myUser];
}
