import 'package:amazon_grpc/src/common/domain/error/failure.dart';
import 'package:amazon_grpc/src/features/auth/data/models/user.dart';
import 'package:dartz/dartz.dart';

import 'package:amazon_grpc/src/common/data/proto.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> signup(UserSignupModel user);
}