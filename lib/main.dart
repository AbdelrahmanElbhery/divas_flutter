import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training2/main_cubit/cubit.dart';
import 'package:training2/main_cubit/state.dart';

import 'diva.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: Diva(),
          );
        },
      ),
    );
  }
}
