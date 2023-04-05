import 'package:flutter/material.dart';

class NewsArts {
  String imgUrl;

  String newsHead;
  String newsDes;
  String newsCnt;
  String newsUrl;

  NewsArts({
    required this.imgUrl,
    required this.newsUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsCnt,
  });

  static NewsArts fromApitoApp(Map<String, dynamic> article) {
    return NewsArts(
        imgUrl: article["urlToImage"] ??
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fbreaking%2520news%2F&psig=AOvVaw20JW1N7iKvxeKfLfYKwMCQ&ust=1680432347163000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCLjiwLvAiP4CFQAAAAAdAAAAABAE",
              newsCnt: article["content"] ?? "----",
        newsDes: article["description"] ?? "----",
        newsHead: article["title"] ?? "----",
        newsUrl: article["url"] ?? "----");
  }
}
