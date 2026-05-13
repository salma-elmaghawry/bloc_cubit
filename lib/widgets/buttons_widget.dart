import 'package:bloc_cubit/bloc/counter_bloc.dart';
import 'package:bloc_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // Add Button
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).increment();
            // context.read<CounterBloc>().add(CounterAddEvent());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        // Remove Button
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).decrement();

            // context.read<CounterBloc>().add(CounterRemoveEvent());
          },
          child: const Icon(Icons.remove),
        ),
        const SizedBox(height: 10),
        // Refresh Button
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).resert();
            // context.read<CounterBloc>().add(CounterRefreshEvent());
          },
          child: const Icon(Icons.refresh),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
