part of 'counter_bloc.dart';

@immutable
sealed class CounterState {
  final int value;
  const CounterState({required this.value});
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(value: 0);
}

final class CounterValueState extends CounterState {
  const CounterValueState( {required super.value, });
}
