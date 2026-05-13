import 'package:bloc_cubit/cubit/counter_cubit.dart';
import 'package:bloc_cubit/widgets/buttons_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter Value"),
            SizedBox(height: 10),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  "${state.value}",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: ButtonsWidget(),
    );
  }
}
