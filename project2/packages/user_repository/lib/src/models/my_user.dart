import 'package:equatable/equatable.dart';
import 'package:user_repository/src/entities/my_user_entity.dart';

class MyUser extends Equatable {
  final String id;
  final String email;
  final String name;
  String? picture;
  MyUser({
    required this.id,
    required this.email,
    required this.name,
    this.picture,
  });

  MyUserEntity toEntity() {
    return MyUserEntity(
      id: id,
      email: email,
      name: name,
      picture: picture,
    );
  }

  static final empty = MyUser(id: '', email: '', name: '', picture: '');

  bool get isEmpty => this == MyUser.empty;
  bool get isNotEmpty => this != MyUser.empty;

  static fromEntity(MyUserEntity entity) {
    return MyUser(
        email: entity.email,
        id: entity.id,
        name: entity.name,
        picture: entity.picture);
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

  MyUser copyWith({
    String? id,
    String? email,
    String? name,
    String? picture,
  }) {
    return MyUser(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      picture: picture ?? this.picture,
    );
  }
}
