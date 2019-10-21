import 'package:basic/model/movie.dart';
import 'package:basic/screens/Moviescreen.dart';
import 'package:flutter/material.dart';

class HorzList extends StatelessWidget {
  final int index;
  HorzList(this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 160,
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(Moviescreen.routeName, arguments: {
            'id' : movieList[index].id,
            'title': movieList[index].title,
            'imageUrl': movieList[index].imageUrl,
            'rating':  movieList[index].rating,
            'year':  movieList[index].year,
            'duration':  movieList[index].duration,
            'description' :movieList[index].description,
          });
        },
              child: Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: Hero(
                tag: movieList[index].id,
                  child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        movieList[index].imageUrl
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              movieList[index].title,
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