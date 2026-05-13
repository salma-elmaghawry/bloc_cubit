part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class CounterAddEvent extends CounterEvent {}

class CounterRemoveEvent extends CounterEvent {}

class CounterRefreshEvent extends CounterEvent {}
