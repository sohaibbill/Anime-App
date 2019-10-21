import 'package:basic/model/movie.dart';
import 'package:basic/screens/Moviescreen.dart';
import 'package:flutter/material.dart';

class VertList extends StatelessWidget {
  final int index;
  VertList(this.index);
  @override
  Widget build(BuildContext context) {
    return  GestureDetector( onTap: (){
          Navigator.of(context).pushNamed(Moviescreen.routeName, arguments: {
            'id' : topRatedMovieList[index].id,
            'title': topRatedMovieList[index].title,
            'imageUrl': topRatedMovieList[index].imageUrl,
            'rating':  topRatedMovieList[index].rating,
            'year':  topRatedMovieList[index].year,
            'duration':  topRatedMovieList[index].duration,
            'description' :topRatedMovieList[index].description,
          });
        },
          child: Column(
                      children: <Widget>[
                        Card(
                          elevation: 5,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 160,
                                width:100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    topLeft: Radius.circular(5),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:NetworkImage(topRatedMovieList[index].imageUrl)
                                    )
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(10),
                                height: 165,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      topRatedMovieList[index].title,
                                      style:TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Cairo',
                                      fontWeight:FontWeight.bold
                                      )
                                    ),

                                    Container(
                                      width: 240,
                                      child: Text(
                                        topRatedMovieList[index].description,
                                        style:TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 12,
                                      ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,)
                      ],
                    ),
    );
  }
}