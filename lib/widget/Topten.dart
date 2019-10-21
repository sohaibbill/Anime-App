import 'package:basic/model/movie.dart';
import 'package:basic/screens/Moviescreen.dart';
import 'package:flutter/material.dart';

class Topten extends StatelessWidget {
  final int index;
  Topten(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(Moviescreen.routeName, arguments: {
            'id' : bestMovieList[index].id,
            'title': bestMovieList[index].title,
            'imageUrl': bestMovieList[index].imageUrl,
            'rating':  bestMovieList[index].rating,
            'year':  bestMovieList[index].year,
            'duration':  bestMovieList[index].duration,
            'description' :bestMovieList[index].description,
          });
        },
              child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      bestMovieList[index].imageUrl
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              bestMovieList[index].title,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}