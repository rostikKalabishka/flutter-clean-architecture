part of 'create_post_bloc.dart';

sealed class CreatePostBlocState extends Equatable {
  const CreatePostBlocState();

  @override
  List<Object> get props => [];
}

final class CreatePostBlocInitial extends CreatePostBlocState {}
