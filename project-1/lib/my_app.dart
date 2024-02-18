import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.myUserRepositories});
  final AbstractUserRepo myUserRepositories;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AthenticationBloc>(
          create: (context) =>
              AthenticationBloc(myUserRepositories: myUserRepositories),
        ),
      ],
      child: MyAppView(),
    );
  }
}
