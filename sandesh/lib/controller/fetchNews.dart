//http://newsapi.org/v2/top-headlines?sources=google-news-in&apiKey=e0851dc8cef54c848a8ffc37fa5cf54b

import 'dart:convert';
import 'dart:io';
import 'dart:developer';
import 'dart:math';

import 'package:http/http.dart';
import 'package:sandesh/model/newsArt.dart';

class FetchNews {
  static List sourcesId = [
    "ABC News",
    "NDTV",
    "Times of India",
    "Indian Express",
    "Hindustan Times",
    "The Hindu",
    "India Today",
    "News18",
    "Economic Times",
    "The Telegraph India",
    "Deccan Chronicle",
    "Ajit Jalandhar",
    "Punjabi Tribune",
    "Jagbani",
    "Awaaz-e-Punjab",
    "ABP Sanjha",
    "Punjab Kesari",
    "Charhdikala",
    "Daily Punjab Times",
    "Rozana Spokesman",
    "Punjabi Jagran",
    "The Himalayan Times",
    "Kathmandu Post",
    "Nagarik News",
    "Online Khabar",
    "Annapurna Post",
    "Al Jazeera",
    "Associated Press",
    "Axios",
    "BBC News",
    "Bloomberg",
    "Business Insider",
    "CBC News",
    "CBS News",
    "CNBC",
    "CNN",
    "ESPN",
    "Financial Times",
    "Fox News",
    "France 24",
    "National Geographic",
    "NBC News",
    "New York Magazine",
    "Newsweek",
    "NPR",
    "Politico",
    "Reuters",
    "Sky News",
    "The Atlantic",
    "The Daily Beast",
    "The Economist",
    "The Guardian",
    "The Hill",
    "The Huffington Post",
    "The Independent",
    "The Intercept",
    "The New Republic",
    "The New Yorker",
    "The Sun",
    "The Times of India",
    "The Verge",
    "The Wall Street Journal",
    "The Washington Post",
    "Time",
    "USA Today",
    "Vice News",
    "Yahoo News",
    "ABC News (AU)",
    "Aftenposten",
    "Anadolu Agency",
    "Ars Technica",
    "Axios (UK)",
    "BBC News Brasil",
    "BBC News 中文",
    "BBC News عربي",
    "Bild",
    "CNN Brasil",
    "CNN en Español",
    "Corriere Della Sera",
    "De Morgen",
    "De Telegraaf",
    "Deutsche Welle",
    "Euronews",
    "Financial Post",
    "Focus",
    "Fortune",
    "Globo",
    "Het Laatste Nieuws",
    "InfoMoney",
    "La Repubblica",
    "Le Figaro",
    "Le Monde",
    "Les Echos",
    "Libération",
    "L'Express",
    "Mashable",
    "Medical News Today",
    "NBC News (UK)",
    "News.com.au",
    "News24",
    "Newsy",
    "Nikkei Asian Review",
    "NRK",
    "PBS NewsHour",
    "PC Gamer",
    "Politiken",
    "Polygon",
    "RT",
    "Slate",
    "TechCrunch",
    "The Conversation",
    "The Daily Telegraph",
    "The Moscow Times",
    "The National",
    "The Straits Times",
    "The Sydney Morning Herald",
    "The Times",
    "The Toronto Star",
    "The Weather Channel",
    "Vox",
    "Wired",
    "ZDNet"
  ];
  static Future<NewsArts> fetchNews() async {
    final _random = new Random();
    var sourceId = sourcesId[_random.nextInt(sourcesId.length)];

    print(sourceId);

    Response response = await get(Uri.parse(
        "http://newsapi.org/v2/top-headlines?sources=$sourcesId&apiKey=e0851dc8cef54c848a8ffc37fa5cf54b"));
    Map body_data = jsonDecode(response.body);

    List articles = body_data["articles"];
    // print(articles);
    final _Newrandom = new Random();
    var myArticle = articles[_random.nextInt(articles.length)];

    print(myArticle);
    return NewsArts.fromApitoApp(myArticle);
  }
}
