import 'package:firebase_auth/firebase_auth.dart';
import 'package:user_repository/user_repository.dart';

abstract interface class UserRepository {
  Stream<User?> get user;

  Future<void> signIn(String email, String password);

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> resetPassword(String email);

  Future<void> logOut();

  Future<MyUser> getMyUser(String myUserId);

  Future<void> setUserData(MyUser user);

  Future<String> uploadPicture(String file, String userId);
}
