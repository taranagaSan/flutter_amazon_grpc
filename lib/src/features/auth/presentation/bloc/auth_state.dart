abstract class AuthState {
  const AuthState();
}

class AuthSighupEmptyState extends AuthState {}

class AuthSighupLoadingState extends AuthState {}

class AuthSighupSuccessState extends AuthState {
  final String id;

  AuthSighupSuccessState(this.id);
}

class AuthSighupErrorState extends AuthState {
  final String message;

  AuthSighupErrorState(this.message);
}
