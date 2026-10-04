

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';
import 'bloc/counter_event.dart';
import 'bloc/counter_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('Course Bloc'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Row(
        children:[
          IconButton(onPressed:(){
    context.read<CounterBloc>().add(IncrementEvent());
    },icon:Icon(Icons.add,size:60)),
    BlocBuilder<CounterBloc,CounterState>(
    builder:(context ,state) =>
    Text("${state.counter}",style:TextStyle(fontSize :20)
    ),

     ),
    IconButton(onPressed:(){
    context.read<CounterBloc>().add(DecrementEvent());
    },icon:Icon(Icons.remove,size:60)),
    ]),
    MaterialButton(onPressed:(){
    print("counter value");
    },
    child:Text("show value Counter A"),),

            ],
        ),


    );
  }
}