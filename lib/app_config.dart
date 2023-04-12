import 'package:amazon_grpc/src/common/data/generated/shop.pbgrpc.dart';
import 'package:amazon_grpc/src/features/auth/data/datasource/auth_service.dart';
import 'package:amazon_grpc/src/features/auth/data/repositories/auth.dart';
import 'package:amazon_grpc/src/features/auth/domain/repositories/auth.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:grpc/grpc.dart';

import 'src/features/auth/domain/usecases/signup.dart';

class AppConfig extends InheritedWidget {
  static GetIt get di => GetIt.instance;
  static int port = 8082;
  static String host = '0.0.0.0';

  AppConfig({
    super.key,
    required super.child
  }) {
    init();
  }

  static AppConfig of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<AppConfig>()!;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;

  Future<void> init() async {
    // useCases
    di.registerLazySingleton<Signup>(() => Signup(di<AuthRepository>()));

    // repositories
    di.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(di<AuthServiceDateSource>()));

    // dataSource
    di.registerLazySingleton<AuthServiceDateSource>(() => AuthServiceDateSourceImpl(di<AuthServiceClient>()));

    // external

    final channel = ClientChannel(
      AppConfig.host,
      port: AppConfig.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    di.registerLazySingleton<AuthServiceClient>(() => AuthServiceClient(channel));
  }
}