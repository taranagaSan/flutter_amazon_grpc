import 'package:amazon_grpc/src/features/auth/data/models/user.dart';
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class SignupEvent extends AuthEvent {
  final UserSignupModel user;

  const SignupEvent(this.user);

  @override
  List<Object?> get props => [user.email];
}
