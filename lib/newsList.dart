import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'newsArticle.dart';
import 'webservice.dart';
import 'constants.dart';

class NewsListState extends State<NewsList> {

  List<NewsArticle> _newsArticles = List<NewsArticle>(); 

  @override
  void initState() {
    super.initState();
    _populateNewsArticles(); 
  }

  void _populateNewsArticles() {
   
    Webservice().load(NewsArticle.all).then((newsArticles) => {
      setState(() => {
        _newsArticles = newsArticles
      })
    });

  }

 
      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: new ListView.builder ( 
       
          
          itemCount: _newsArticles.length,
            itemBuilder: (BuildContext context, int index) {
            return new Container(
            padding: EdgeInsets.all(14.0),
            child: new ListTile(
                  title: _newsArticles[index].urlToImage == null ? Image.asset(Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL) : Image.network(_newsArticles[index].urlToImage), 
                  subtitle: Text(_newsArticles[index].title, style: TextStyle(fontSize: 18)),
                                ),
                               
            decoration:
                new BoxDecoration(
                
                    color: Colors.pink[50],
                   
               borderRadius: new BorderRadius.only(
                
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
                bottomLeft: const Radius.circular(40.0),
                bottomRight: const Radius.circular(40.0),
              )
            )
                            );
                  
            }
      )
    );
  }
}

class NewsList extends StatefulWidget {

  @override
  createState() => NewsListState(); 
}