import 'package:counter_7/program_counter.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter 7 App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProgramCounter(
        title: 'Program Counter',
      ),
    );
  }
}
