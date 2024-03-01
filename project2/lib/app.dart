import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/blocs/authentication_bloc/authentication_bloc.dart';

import 'package:project2/my_app_view.dart';
import 'package:user_repository/user_repository.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.userRepository});
  final UserRepository userRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: MultiRepositoryProvider(
          providers: [
            RepositoryProvider(
              create: (_) =>
                  AuthenticationBloc(myUserRepository: userRepository),
            ),
          ],
          child: const MyAppView(),
        ));
  }
}
