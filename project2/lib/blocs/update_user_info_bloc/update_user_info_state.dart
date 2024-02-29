part of 'update_user_info_bloc.dart';

sealed class UpdateUserInfoState extends Equatable {
  const UpdateUserInfoState();
  
  @override
  List<Object> get props => [];
}

final class UpdateUserInfoInitial extends UpdateUserInfoState {}
