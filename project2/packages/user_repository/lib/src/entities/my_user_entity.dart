import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? picture;
  const MyUserEntity({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });

  Map<String, dynamic> toDocument() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'picture': picture,
    };
  }

  static fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
        email: doc['email'],
        id: doc['id'],
        name: doc['name'],
        picture: doc['picture']);
  }

  @override
  String toString() {
    return '''UserEntity:{
      'id': $id,
      'email': $email,
      'name': $name,
      'picture': $picture
    }''';
  }

  @override
  List<Object?> get props => [id, email, name, picture];
}
