import 'package:flutter/material.dart';

import '../models/budget.dart';
import '../widgets/budget_card.dart';
import '../widgets/counter_seven_drawer.dart';

class BudgetList extends StatelessWidget {
  final List<Budget> data;
  const BudgetList({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Data Budget'),
          elevation: 0,
        ),
        drawer: CounterSevenDrawer(
          data: data,
        ),
        body: Center(
          child: data.isEmpty
              ? Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'You doesnt have any transaction yet :(',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.deepPurple.shade200,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : ListView.builder(
                  reverse: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) =>
                      BudgetCard(data: data[index]),
                  padding: const EdgeInsets.only(bottom: 12),
                ),
        ),
      );
}
