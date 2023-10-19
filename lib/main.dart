import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_25/Dio/Dio_setting.dart';
import 'package:flutter_application_25/bloc/bloc_bloc.dart';
import 'package:flutter_application_25/repositiries/auth_repositoties.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'UI/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioForNative(),
        ),
        RepositoryProvider(
          create: (context) => AuthRepository(
              dio: RepositoryProvider.of<DioSettings>(context).dio),
        ),
      ],
      child: BlocProvider(
        create: (context) => BlocBloc(
            repository: AuthRepository(
                dio: RepositoryProvider.of<DioSettings>(context).dio)),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        ),
      ),
    );
  }
}
