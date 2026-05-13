part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int value;
  const CounterState({required this.value});
}

final class CounterInitial extends CounterState {
  const CounterInitial() : super(value: 0);
}

final class CounterValueChangedState extends CounterState {
  const CounterValueChangedState({required super.value});
}
