import 'package:amazon_grpc/src/common/domain/error/failure.dart';
import 'package:dartz/dartz.dart';

// Type - тип возврата без ошибок
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}