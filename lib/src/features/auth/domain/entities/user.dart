import 'package:equatable/equatable.dart';

enum UserType {
  unspecified,
  user,
}

abstract class UserEntity extends Equatable {
  final String email;
  final UserType type;
  final String? address;

  UserEntity({
    required this.email,
    required this.type,
    this.address = '',
  });

  @override
  List<Object?> get props => [email];
}

class UserSignupEntity extends UserEntity {
  final String password;
  final String name;

  UserSignupEntity({
    required super.email,
    required super.type,
    required this.password,
    required this.name,
  });
}
