import 'package:flutter/material.dart';
import 'package:flutter_bloc_basic/counter_bloc.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/widget/button_widget.dart';
import 'package:flutter_bloc_basic/sample_flutter_bloc/widget/result_widget.dart';

class NewCounterPage extends StatefulWidget {
  const NewCounterPage({super.key});

  @override
  State<NewCounterPage> createState() => _NewCounterPageState();
}

class _NewCounterPageState extends State<NewCounterPage> {
  CounterBloc counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'New Counter Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        elevation: 4,
        backgroundColor: Colors.blueAccent,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Your Value is:'),
          SizedBox(height: 16),
          ResultWidget(),
          SizedBox(height: 16),
          ButtonWidget(),
        ],
      ),
    );
  }
}
