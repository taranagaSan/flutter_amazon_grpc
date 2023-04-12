import 'package:amazon_grpc/src/common/data/generated/shop.pbgrpc.dart';
import 'package:amazon_grpc/src/common/domain/error/exception.dart';
import 'package:amazon_grpc/src/features/auth/data/models/user.dart';
import 'package:amazon_grpc/src/features/auth/domain/entities/user.dart';
import 'package:grpc/grpc.dart';

abstract class AuthServiceDateSource {
  Future<AuthResponse> signup(UserSignupModel user);
}

class AuthServiceDateSourceImpl implements AuthServiceDateSource {
  final AuthServiceClient client;

  AuthServiceDateSourceImpl(this.client);

  @override
  Future<AuthResponse> signup(UserSignupModel user) async {
    User request = User(
      password: user.password,
      name: user.name,
      type: mapToUserStatus(user.type),
    );
    CallOptions callOptions = CallOptions(
      timeout: const Duration(seconds: 30), // TODO
    );

    try {
      AuthResponse response = await client.authUser(request, options: callOptions);
      return response;
    } on GrpcError catch(e) {
      print(e.message);

      if (e.code == StatusCode.alreadyExists) {
        throw UserAlreadyExistException(e.message.toString());
      }

      if (e.code == StatusCode.invalidArgument) {
        throw ServerException(e.message.toString());
      }
    } catch(e) {
      throw ServerException(e.toString());
    }

    throw ServerException('can no be null');
  }

  User_UserType mapToUserStatus(UserType status) {
    switch (status) {
      case UserType.user:
        return User_UserType.USER_TYPE_USER;
      default:
        return User_UserType.USER_TYPE_UNSPECIFIED;
    }
  }
}