import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:user_repository/user_repository.dart';

part 'my_user_event.dart';
part 'my_user_state.dart';

class MyUserBloc extends Bloc<MyUserEvent, MyUserState> {
  final UserRepository userRepository;
  MyUserBloc(UserRepository myUserRepository)
      : userRepository = myUserRepository,
        super(const MyUserState.loading()) {
    on<GetMyUser>((event, emit) async {
      emit(const MyUserState.loading());
      try {
        final myUser = await userRepository.getMyUser(event.myUserId);
        emit(MyUserState.success(myUser));
      } catch (e) {
        log(e.toString());
        emit(const MyUserState.failure());
      }
    });
  }
}
