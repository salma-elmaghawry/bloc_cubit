import 'package:bloc_cubit/bloc/counter_bloc.dart';
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
            context.read<CounterBloc>().add(CounterAddEvent());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        // Remove Button
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(CounterRemoveEvent());
          },
          child: const Icon(Icons.remove),
        ),
        const SizedBox(height: 10),
        // Refresh Button
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(CounterRefreshEvent());
          },
          child: const Icon(Icons.refresh),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
