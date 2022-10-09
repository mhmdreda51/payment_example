import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_project/shared/blocObserver/bloc_observer.dart';
import 'package:payment_project/shared/network/dio_helper.dart';
import 'package:payment_project/shared/router.dart';

import 'modules/register/register.dart';

void main() async {
  runApp(const MyApp());
  await DioHelper.init();
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      onGenerateRoute: onGenerateRoute,
      home: const RegisterScreen(),
    );
  }
}
