import 'package:equatable/equatable.dart';


sealed class CounterState extends Equatable{
  final int counter;
  const CounterState(this.counter);
  @override
  // TODO: implement props
  List<Object?> get props =>  [counter];

}
class CounterIntialState extends CounterState {
  CounterIntialState(super.counter);
}
class IncrementState extends CounterState{
  const IncrementState(super.counter);
}
class DecrementState extends CounterState{
  const DecrementState(super.counter);
}