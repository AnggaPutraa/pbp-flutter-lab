class WatchItem {
  late bool watched;
  late String title;
  late int rating;
  late String releaseDate;
  late String review;

  WatchItem(
      {required this.watched,
      required this.title,
      required this.rating,
      required this.releaseDate,
      required this.review});

  WatchItem.fromJson(Map<String, dynamic> json) {
    watched = json['watched'];
    title = json['title'];
    rating = json['rating'];
    releaseDate = json['release_date'];
    review = json['review'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['watched'] = watched;
    data['title'] = title;
    data['rating'] = rating;
    data['release_date'] = releaseDate;
    data['review'] = review;
    return data;
  }
}
