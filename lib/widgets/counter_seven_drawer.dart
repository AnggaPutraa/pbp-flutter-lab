import 'package:counter_7/pages/wacth_list.dart';
import 'package:flutter/material.dart';

import '../models/budget.dart';
import '../pages/budget_list.dart';
import '../pages/form_budget.dart';
import '../pages/program_counter.dart';

class CounterSevenDrawer extends StatelessWidget {
  final List<Budget> data;
  
  const CounterSevenDrawer({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 40, 12, 0),
        child: Column(
          children: [
            ListTile(
              title: const Text('Counter'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProgramCounter(
                      title: 'Program Counter',
                      data: data,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BudgetForm(
                      data: data,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BudgetList(
                      data: data,
                    ),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Wacth List'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => WatchList(
                      data: data,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
