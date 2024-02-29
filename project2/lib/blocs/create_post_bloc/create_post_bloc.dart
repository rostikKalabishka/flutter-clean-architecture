import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_post_event.dart';
part 'create_post_state.dart';

class CreatePostBloc extends Bloc<CreatePostBlocEvent, CreatePostBlocState> {
  CreatePostBloc() : super(CreatePostBlocInitial()) {
    on<CreatePostBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
