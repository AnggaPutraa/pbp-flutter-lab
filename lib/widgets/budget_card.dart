import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/budget.dart';

class BudgetCard extends StatelessWidget {
  const BudgetCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Budget data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade400,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            Text(
              DateFormat.MMMMEEEEd().format(data.transactionDate),
              style: TextStyle(color: Colors.grey.shade50),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rp ${data.nonimal}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade200,
                    ),
                  ),
                  Text(
                    data.type,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
