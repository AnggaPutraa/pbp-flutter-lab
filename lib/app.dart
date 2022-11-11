import 'package:flutter/material.dart';

import 'models/budget.dart';
import 'pages/program_counter.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Budget> budgets = <Budget>[];
    return MaterialApp(
      title: 'Counter 7 App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: ProgramCounter(
        title: 'Program Counter',
        data: budgets,
      ),
    );
  }
}
