import 'package:amazon_grpc/src/features/auth/domain/entities/user.dart';

class UserSignupModel extends UserSignupEntity {
  UserSignupModel({
    required super.name,
    required super.email,
    required super.password,
    required super.type,
  });
}
