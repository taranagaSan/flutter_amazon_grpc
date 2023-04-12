import 'package:amazon_grpc/src/common/data/generated/shop.pb.dart';
import 'package:amazon_grpc/src/common/domain/error/failure.dart';
import 'package:amazon_grpc/src/common/domain/usecases/usecase.dart';
import 'package:amazon_grpc/src/features/auth/data/models/user.dart';
import 'package:amazon_grpc/src/features/auth/domain/repositories/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class Signup extends UseCase<AuthResponse, AuthParams> {
  final AuthRepository _authRepository;

  Signup(this._authRepository);

  @override
  Future<Either<Failure, AuthResponse>> call(AuthParams params) async {
    return await _authRepository.signup(params.user);
  }
}

class AuthParams extends Equatable {
  final UserSignupModel user;

  const AuthParams({ required this.user });

  @override
  List<Object?> get props => [];
}