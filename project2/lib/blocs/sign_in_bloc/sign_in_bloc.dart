import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repository/user_repository.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final UserRepository userRepository;
  SignInBloc(UserRepository myUserRepository)
      : userRepository = myUserRepository,
        super(SignInInitial()) {
    on<SignInRequired>((event, emit) async {
      emit(SignInProcess());
      try {
        await userRepository.signIn(event.email, event.password);
        emit(SignInSuccess());
      } catch (e) {
        log(e.toString());
        emit(SignInFailure(message: e.toString()));
      }
    });

    on<SignOut>((event, emit) async {
      emit(SignInProcess());
      try {
        await userRepository.logOut();
        emit(SignInSuccess());
      } catch (e) {
        emit(SignInFailure(message: e.toString()));
      }
    });
  }
}
