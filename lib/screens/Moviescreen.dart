import 'package:flutter/material.dart';
class Moviescreen extends StatelessWidget {
  static const routeName = "/Moviescreen";
  
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String,String>;
    final id = routeArgs['id'];
    final du = routeArgs['duration'];
    final ye = routeArgs['year'];
    final rating = routeArgs['rating'];
    return Scaffold(
      appBar: AppBar(
        //title: Text("Screen"),
        backgroundColor: Color(0xfff4f4f4f4),
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: SingleChildScrollView(
         padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Column(
          children: <Widget>[
            Center(
              child: Card(
                elevation: 5,
                child: Hero(
                  tag:id ,
                    child: Container(
                    height: 450,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(image: NetworkImage(routeArgs['imageUrl']))
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height:20),
            Text(
              routeArgs['title'],
              style:TextStyle(
                fontFamily: "Cairo",
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                ),
            ),
            SizedBox(height:20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.live_tv,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(height:10),
                          Text(
                            "$du Episodes",
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.date_range,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(height:10),
                          Text(
                            "On $ye ",
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.rate_review,
                          size: 45,
                          color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(height:10),
                          Text(
                            "$rating/10",
                            style: TextStyle(
                              fontFamily: "Cairo",
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height:20),
            Text(
              routeArgs['description'],
              style: TextStyle(
                fontFamily: "Cairo",
                fontSize: 18,
                height: 1.5
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
              child: RaisedButton(
                padding: const EdgeInsets.only(top: 10,bottom: 10),
                onPressed: (){},
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.play_circle_outline),
                    Text("Watch trailer",
                      style: TextStyle(
                      fontFamily: "Cairo",
                      fontSize: 18,
                      height: 1.5
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
              )
            ),
          )
        ],
      ),
    );
  }
}