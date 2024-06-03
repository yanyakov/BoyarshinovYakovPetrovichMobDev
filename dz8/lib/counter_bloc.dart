// counter_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';

// События для нашего блока
abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

// Состояния для нашего блока
class CounterState {
  final int counter;

  CounterState(this.counter);
}

// Блок
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncrementCounter>((event, emit) {
      emit(CounterState(state.counter + 1));
    });
  }
}