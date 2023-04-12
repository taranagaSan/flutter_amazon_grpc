import 'package:amazon_grpc/src/common/data/generated/shop.pb.dart';
import 'package:amazon_grpc/src/common/domain/error/exception.dart';
import 'package:amazon_grpc/src/common/domain/error/failure.dart';
import 'package:amazon_grpc/src/features/auth/data/datasource/auth_service.dart';
import 'package:amazon_grpc/src/features/auth/data/models/user.dart';
import 'package:amazon_grpc/src/features/auth/domain/repositories/auth.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthServiceDateSource dataSource;

  AuthRepositoryImpl(this.dataSource);

  @override
  Future<Either<Failure, AuthResponse>> signup(UserSignupModel user) async {
    try {
      AuthResponse response = await dataSource.signup(user);
      return Right(response);
    } on UserAlreadyExistException catch(e) {
      return Left(AuthFailure(e.message.toString()));
    } catch(e) {
      return Left(ServerFailure(e.toString()));
    }
  }
  
}