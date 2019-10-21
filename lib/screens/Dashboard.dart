import 'package:basic/model/movie.dart';
import 'package:basic/widget/HorzList.dart';
import 'package:basic/widget/Topten.dart';
import 'package:basic/widget/VertList.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('animeApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body: SingleChildScrollView(
              child: Column(
         
          children: <Widget>[
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Recommended Animes ",style:TextStyle(
                  fontSize: 18,
                  fontFamily: 'Cairo',
                  fontWeight:FontWeight.bold 
                  ),
                ),
                FlatButton(
                  child: Text('View All',style:TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight:FontWeight.bold 
                  )),
                   onPressed: (){},
                )
              ],
            ),
            ),
            Container(
              height: 280,
             
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movieList.length,
                itemBuilder: (ctx, i) => HorzList(i),
                //children: <Widget>[
                //HorzList(),
                //HorzList(),
                //HorzList(),
                //HorzList(),
                //HorzList(),
                //],
              ),
            ),
            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Best Of 2019 ",style:TextStyle(
                  fontSize: 18,
                  fontFamily: 'Cairo',
                  fontWeight:FontWeight.bold 
                  ),
                ),
                FlatButton(
                  child: Text('View All',style:TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight:FontWeight.bold 
                  )),
                   onPressed: (){},
                )
              ],
            ),
            ),
            Container(
              height: 550,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView.builder(
                itemCount: topRatedMovieList.length,
                itemBuilder: (ctx, i) => VertList(i),
                physics: NeverScrollableScrollPhysics(),
                //children: <Widget>[
                  //VertList(),
                  //VertList(),
                  //VertList(),
                //],
              ),
            ),
             Padding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Top 10 Us Animation ",style:TextStyle(
                  fontFamily: 'Cairo',
                  fontSize: 18,
                  fontWeight:FontWeight.bold 
                  ),
                ),
                FlatButton(
                  child: Text('View All',style:TextStyle(
                  fontFamily: 'Cairo',
                  fontWeight:FontWeight.bold 
                  )),
                   onPressed: (){},
                )
              ],
            ),
            ),
            Container(
              height: 280,
             
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: bestMovieList.length,
                itemBuilder: (ctx, i) => Topten(i),
                //children: <Widget>[
                //HorzList(),
                //HorzList(),
                //HorzList(),
                //HorzList(),
                //HorzList(),
                //],
              ),
            ),
          ],
        ),
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}