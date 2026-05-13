import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(BuildContext context) : super(CounterInitial());
  void increment() {
    emit(CounterValueChangedState(value: state.value + 1));
  }

  void decrement() {
    emit(CounterValueChangedState(value: state.value - 1));
  }

  void resert() {
    emit(const CounterValueChangedState(value: 0));
  }
}
