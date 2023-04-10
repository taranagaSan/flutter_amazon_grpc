import 'package:amazon_grpc/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'constants/global_vars.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(routes: routes);

    return MaterialApp.router(
      routerConfig: router,
      title: 'Amazon clone',
      theme: ThemeData(
        useMaterial3: true,
          scaffoldBackgroundColor: GlobalVariables.backgroundColor,
          colorScheme: const ColorScheme.light(
            primary: GlobalVariables.secondaryColor,
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          )),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Hello'),
      //   ),
      //   body: Column(
      //     children: [
      //       Center(
      //         child: const Text('center'),
      //       ),
      //       ElevatedButton(
      //         onPressed: () {},
      //         child: const Text('Button'),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
