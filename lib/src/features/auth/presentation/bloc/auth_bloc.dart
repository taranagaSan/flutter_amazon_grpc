import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:amazon_grpc/src/features/auth/domain/usecases/signup.dart';

import 'auth_event.dart';
import 'auth_state.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Signup useCase;

  AuthBloc(this.useCase) : super(AuthSighupEmptyState()) {
    on<SignupEvent>(_signup);
  }

  _signup(SignupEvent event, Emitter<AuthState> emit) async {
    emit(AuthSighupLoadingState());

    var either = await useCase(AuthParams(
      user: event.user,
    ));

    emit(either.fold(
            (failure) => AuthSighupErrorState(failure.message),
            (response) => AuthSighupSuccessState(response.id),
    ),);
  }
}
