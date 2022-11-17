import 'package:counter_7/models/watch_item.dart';
import 'package:flutter/material.dart';

import '../models/budget.dart';
import '../widgets/counter_seven_drawer.dart';

class WatchItemDetail extends StatefulWidget {
  final List<Budget> data;
  final WatchItem watchItem;
  const WatchItemDetail({
    Key? key,
    required this.data,
    required this.watchItem,
  }) : super(key: key);

  @override
  State<WatchItemDetail> createState() => _WatchItemDetailState();
}

class _WatchItemDetailState extends State<WatchItemDetail> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Wacth Item Detail'),
          elevation: 0,
        ),
        drawer: CounterSevenDrawer(
          data: widget.data,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.watchItem.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      children: [
                        const Text(
                          'Release Date: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(widget.watchItem.releaseDate)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Rating: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('${widget.watchItem.rating}/5')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Status: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.watchItem.watched
                                  ? 'wacthed'
                                  : 'not wacthed',
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                          width: 12,
                          child: Checkbox(
                            value: widget.watchItem.watched,
                            onChanged: (value) {
                              setState(() {
                                widget.watchItem.watched = value!;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Review: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Text(
                      widget.watchItem.review,
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50)),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      );
}
