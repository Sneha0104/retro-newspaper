import 'newsList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var now = new DateTime.now();
    String formattedDate =
        DateFormat('EEEE, MMMM d, y').format(now).toUpperCase();
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2.0, color: Colors.grey)),
                      image: DecorationImage(
                          image: AssetImage("assets/images/antique1.jpeg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.grey,
                    backgroundBlendMode: BlendMode.saturation,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: ListView(children: [
                  Ink(
                    color: Colors.grey,
                    child: ListTile(
                      title: Text("Daily",
                          style: GoogleFonts.unifrakturMaguntia(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 20,

                            color: Colors.black,
                            //fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          )),
                      trailing: Icon(Icons.calendar_today),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Ink(
                    //color: Colors.grey,
                    child: ListTile(
                      title: Text("Weekly",
                          style: GoogleFonts.unifrakturMaguntia(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 20,

                            color: Colors.black,
                            //fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          )),
                      trailing: Icon(Icons.calendar_today),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  Ink(
                    color: Colors.grey,
                    child: ListTile(
                      title: Text("Monthly",
                          style: GoogleFonts.unifrakturMaguntia(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 20,

                            color: Colors.black,
                            //fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          )),
                      trailing: Icon(Icons.calendar_today),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Saved News",
                        style: GoogleFonts.unifrakturMaguntia(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 20,

                          color: Colors.black,
                          //fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        )),
                    trailing: Icon(Icons.bookmark),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  Ink(
                    color: Colors.grey,
                    child: ListTile(
                      title: Text("Settings",
                          style: GoogleFonts.unifrakturMaguntia(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 20,

                            color: Colors.black,
                            //fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic,
                          )),
                      trailing: Icon(Icons.settings),
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  ListTile(
                    title: Text("Account",
                        style: GoogleFonts.unifrakturMaguntia(
                          textStyle: Theme.of(context).textTheme.display1,
                          fontSize: 20,

                          color: Colors.black,
                          //fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic,
                        )),
                    trailing: Icon(Icons.account_circle),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          flexibleSpace: Image(
            image: AssetImage('assets/images/retro6.jpeg'),
            fit: BoxFit.cover,
          ),
          title: Text('Newsletter',
              style: GoogleFonts.unifrakturMaguntia(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 50,

                color: Colors.black,
                //fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              )),
          leading: Icon(
            Icons.subject,
            color: Colors.black,
            size: 60.0,
          ),
//          bottom: new PreferredSize(
//            child: new Container(
//                // padding: const EdgeInsets.all(0),
//                child: new Text('_________________ \n _________')),
//          ),
        ),
        // backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Text(
              '\t\t\t\t____________________________________________\t\t\t\t',
              style: GoogleFonts.ebGaramond(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              '\t\t\t\tNEW YORK, $formattedDate',
              style: GoogleFonts.ebGaramond(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              '\t\t\t\t____________________________________________\t\t\t\t',
              style: GoogleFonts.ebGaramond(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              '\t\t\t\t_________________________\t\t\t\t',
              style: GoogleFonts.ebGaramond(
                textStyle: Theme.of(context).textTheme.display1,
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
//            Text(
//              '__________________________________\n',
//              style: GoogleFonts.ebGaramond(
//                textStyle: Theme.of(context).textTheme.display1,
//                fontSize: 20,
//                fontWeight: FontWeight.w700,
//                fontStyle: FontStyle.normal,
//              ),
//            ),
            Expanded(
              child: NewsList(),
            )
          ],
        ),
        //Container(
////          decoration: new BoxDecoration(
////            border: Border(bottom: BorderSide(width: 2.0, color: Colors.pink)),
//////
//////              image: DecorationImage(
//////                image: AssetImage('images/retro.jpeg'),
//////                //fit: BoxFit.cover,
//////              ),
////          ),
//          child: NewsList(),
//        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.question_answer,
                  color: Colors.black38,
                ),
                title:
                    Text('Relevance', style: TextStyle(color: Colors.black38))),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.share,
                  color: Colors.black38,
                ),
                title: Text(
                  'Share',
                  style: TextStyle(color: Colors.black38),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.black38,
                ),
                title: Text('Favourites',
                    style: TextStyle(color: Colors.black38))),
          ],
          //   currentIndex: selectedIndex,
          //fixedColor: Colors.black38,
          // onTap: onItemTapped,
        ),
      ),
    );
  }
}
