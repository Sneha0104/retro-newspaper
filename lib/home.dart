import 'newsList.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       
          
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue[100],
            textTheme: Theme.of(context).textTheme.apply(
            bodyColor: Colors.black,
            displayColor: Colors.black),
            
            
            bottom: TabBar(
             labelStyle: TextStyle(
              
             color: Colors.black,
            ),
              tabs: [
                Tab(icon: Icon(Icons.calendar_today , color:Colors.black,), text: "today", ),
                Tab(icon: Icon(Icons.calendar_today,color:Colors.black,), text: "week", ),
                Tab(icon: Icon(Icons.calendar_today,color:Colors.black,), text: "month",),
              ],
            ),
            
            title: Text('Home'),
          ),
          
          body: TabBarView(
            children: [
              
              NewsList(),
              NewsList(),
              NewsList()

           
                        ],
          ),
          
        ),
      ),
    );
  }
}