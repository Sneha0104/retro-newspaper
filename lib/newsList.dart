import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'newsArticle.dart';
import 'webservice.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsListState extends State<NewsList> {
  List<NewsArticle> _newsArticles = List<NewsArticle>();

  @override
  void initState() {
    super.initState();
    _populateNewsArticles();
  }

  void _populateNewsArticles() {
    Webservice().load(NewsArticle.all).then((newsArticles) => {
          setState(() => {_newsArticles = newsArticles})
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: new ListView.builder(
          itemCount: _newsArticles.length,
          itemBuilder: (BuildContext context, int index) {
            return new Container(
                padding: EdgeInsets.all(14.0),
                child: new ListTile(
                  title: _newsArticles[index].urlToImage == null
                      ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL)
                      : Image.network(_newsArticles[index].urlToImage),
                  subtitle: Text(_newsArticles[index].title,
                      style: GoogleFonts.ebGaramond(
                        textStyle: Theme.of(context).textTheme.display1,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      )),
                  trailing: Icon(Icons.more_vert),
                ),
                foregroundDecoration: BoxDecoration(
                  color: Colors.grey,
                  backgroundBlendMode: BlendMode.saturation,
                ),
                decoration: new BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 2.0, color: Colors.grey)),
                  image: DecorationImage(
                    image: AssetImage('assets/images/retro6.jpeg'),
                    fit: BoxFit.cover,
                  ),

//                    borderRadius: new BorderRadius.only(
//                      topLeft: const Radius.circular(40.0),
//                      topRight: const Radius.circular(40.0),
//                      bottomLeft: const Radius.circular(40.0),
//                      bottomRight: const Radius.circular(40.0),
//                    )
                ));
          }),
    ));
  }
}

class NewsList extends StatefulWidget {
  @override
  createState() => NewsListState();
}
