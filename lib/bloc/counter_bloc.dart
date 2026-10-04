import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc() : super(CounterIntialState(0)){
  on<IncrementEvent>((event,emit){
    if(event is IncrementEvent){
      if(state.counter ==2)
        {
          throw Exception("Error ex");
        }
    }
    emit(IncrementState(state.counter +1));

  });
  on<DecrementEvent>((event,emit){
    emit(DecrementState(state.counter -1));

  });
  }
}