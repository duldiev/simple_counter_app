import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterState: 0, wasIncremented: false));

  void increment() => emit(
      CounterState(counterState: state.counterState + 1, wasIncremented: true));
  void decrement() => emit(CounterState(
      counterState: state.counterState - 1, wasIncremented: false));
}
