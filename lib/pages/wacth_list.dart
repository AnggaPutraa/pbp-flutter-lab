import 'package:counter_7/data_source/watch_list_data_source.dart';
import 'package:counter_7/pages/watch_item_detail.dart';
import 'package:counter_7/widgets/counter_seven_drawer.dart';
import 'package:flutter/material.dart';

import '../models/budget.dart';
import '../models/watch_item.dart';
import '../widgets/wacth_item_card.dart';

class WatchList extends StatefulWidget {
  final List<Budget> data;
  const WatchList({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<WatchList> createState() => _WatchListState();
}

class _WatchListState extends State<WatchList> {
  late Future<List<WatchItem>> _futureWatchList;
  late WatchListRemoteDataSource _remoteDataSource;

  @override
  void initState() {
    _remoteDataSource = WatchListRemoteDataSource();
    _futureWatchList = _remoteDataSource.fecthWatchList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
          elevation: 0,
        ),
        drawer: CounterSevenDrawer(data: widget.data),
        body: Center(
          child: FutureBuilder(
            future: _futureWatchList,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return !snapshot.hasData
                    ? Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'You doesnt have any watch list yet :(',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.deepPurple.shade200,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                          child: GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WatchItemDetail(
                                  data: widget.data,
                                  watchItem: snapshot.data[index],
                                ),
                              ),
                            ),
                            child: WacthItemCard(
                              watchItem: snapshot.data[index],
                            ),
                          ),
                        ),
                        padding: const EdgeInsets.only(bottom: 12),
                      );
              }
            },
          ),
        ),
      );
}
