class ServerException implements Exception {
  final String message;

  ServerException([this.message = '']);

  @override
  String toString() => message;
}

class UserAlreadyExistException extends ServerException {
  UserAlreadyExistException([super.message = '']);
}