import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/budget.dart';
import '../widgets/counter_seven_drawer.dart';

class BudgetForm extends StatefulWidget {
  final List<Budget> data;
  const BudgetForm({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<BudgetForm> createState() => _BudgetFormState();
}

class _BudgetFormState extends State<BudgetForm> {
  final _key = GlobalKey<FormState>();
  String _title = '';
  int _nonimal = 0;
  final _status = ['Expense', 'Income'];
  String _currentStatus = 'Expense';
  DateTime _transactionDate = DateTime.now();
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _dateController.text = DateFormat.MMMMEEEEd().format(_transactionDate);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
        elevation: 0,
      ),
      drawer: CounterSevenDrawer(
        data: widget.data,
      ),
      body: Form(
        key: _key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                      hintText: 'Sate Pacil',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _title = value!;
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Title can not be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Nominal',
                      hintText: '15000',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _nonimal = int.parse(value!);
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _nonimal = int.parse(value!);
                      });
                    },
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Nominal can not be empty!';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                  child: TextFormField(
                    readOnly: true,
                    controller: _dateController,
                    decoration: InputDecoration(
                      labelText: 'Date',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onTap: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2010),
                        lastDate: DateTime.now(),
                      ).then((value) {
                        value != null
                            ? _transactionDate = value
                            : _transactionDate = DateTime.now();
                        setState(() {});
                      });
                    },
                  ),
                ),
                DropdownButton(
                  value: _currentStatus,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: _status.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _currentStatus = value!;
                    });
                  },
                  underline: const SizedBox(),
                  elevation: 2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 12,
              ),
              child: ElevatedButton(
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    Budget newBudgeting = Budget(
                      title: _title,
                      nonimal: _nonimal,
                      transactionDate: _transactionDate,
                      type: _currentStatus,
                    );
                    widget.data.add(newBudgeting);
                    setState(() {});
                  }
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50)),
                child: const Text('Save'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
