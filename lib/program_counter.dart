import 'package:flutter/material.dart';

class ProgramCounter extends StatefulWidget {
  const ProgramCounter({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<ProgramCounter> createState() => _ProgramCounterState();
}

class _ProgramCounterState extends State<ProgramCounter> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _counter % 2 == 0 ? 'EVEN' : 'ODD',
              style: TextStyle(
                fontSize: 16,
                color: _counter % 2 == 0 ? Colors.blue : Colors.red,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _counter > 0
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: 32,
                  ),
                  child: FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: 'Increment',
                    elevation: 0,
                    child: const Icon(Icons.remove),
                  ),
                )
              : const SizedBox(),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            elevation: 0,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
