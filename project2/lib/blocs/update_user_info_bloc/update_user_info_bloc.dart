import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'update_user_info_event.dart';
part 'update_user_info_state.dart';

class UpdateUserInfoBloc extends Bloc<UpdateUserInfoEvent, UpdateUserInfoState> {
  UpdateUserInfoBloc() : super(UpdateUserInfoInitial()) {
    on<UpdateUserInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
