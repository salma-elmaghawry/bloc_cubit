import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterAddEvent>((event, emit) {
      emit(CounterValueState(value: state.value + 1));
    });
    on<CounterRemoveEvent>((event, emit) {
      emit(CounterValueState(value: state.value - 1));
    });
    on<CounterRefreshEvent>((event, emit) {
      emit(const CounterValueState(value: 0));
    });
  }
}
