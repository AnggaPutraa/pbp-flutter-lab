import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models/watch_item.dart';

class WatchListRemoteDataSource {
  Future<List<WatchItem>> fecthWatchList() async {
    try {
      Uri url = Uri.parse(
          'https://pbp-tugas-2-angga.herokuapp.com/mywatchlist/json/');
      var response = await http.get(url);
      var data = jsonDecode(utf8.decode(response.bodyBytes));
      List<WatchItem> watchList = [];
      for (var item in data) {
        watchList.add(WatchItem.fromJson(item['fields']));
      }
      return watchList;
    } catch (e) {
      throw Exception('error: $e');
    }
  }
}
