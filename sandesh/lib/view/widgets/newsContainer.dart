import 'package:flutter/material.dart';
import 'package:sandesh/view/detail_view.dart';

class NewsContainer extends StatelessWidget {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String newsCnt;

  NewsContainer({
    super.key,
    required this.imgUrl,
    required this.newsHead,
    required this.newsDes,
    required this.newsUrl,
    required this.newsCnt,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        FadeInImage.assetNetwork(
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            height: 400,
            placeholder: "assets/images/img.jpg",
            image: imgUrl),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 15,
            ),
            Text(
              newsHead.length > 100
                  ? "${newsHead.substring(0, 100)}..."
                  : newsHead,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              newsDes,
              style: TextStyle(
                  fontSize: 15, color: Color.fromARGB(255, 187, 133, 196)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              newsCnt != '--'
                  ? newsCnt.length > 200
                      ? newsCnt.substring(0, 200)
                      : "${newsCnt.toString().substring(0, newsCnt.length - 15)}..."
                  : newsCnt,
              style: TextStyle(fontSize: 16),
            ),
          ]),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return DetailViewScreen(newsUrl: newsUrl);
                    }));
                  },
                  child: Text('Read more')),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
