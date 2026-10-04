import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'home.dart';
import 'observer.dart';

void main() {
  Bloc.observer= MyblocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(

      providers: [BlocProvider(create: (context) => CounterBloc(),)],
      child:MaterialApp(
        title: 'Course Bloc',
        home:HomePage(),

      ) ,);

  }
}
