import 'package:amazon_grpc/src/features/auth/presentation/bloc/view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final List<RouteBase> routes = [
  GoRoute(
    path: '/',
    builder: (context, state) => const AuthPage(),
  ),
  GoRoute(
    path: '/auth',
    builder: (context, state) => const AuthPage(),
  ),
];
