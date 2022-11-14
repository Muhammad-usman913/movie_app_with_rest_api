import 'dart:ffi';

import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {

   DetailScreen({Key? key,required this.posterUrl,required this.description,required this.title,required this.movieId,required this.releaseDate,required this.voteAverage}) : super(key: key);

  final posterUrl;
  final description;
  final releaseDate;
  final String title;
  final double voteAverage;
  final int movieId;


  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.width * 0.6,
              color: Colors.green,
              child: Image.network(
                "https://image.tmdb.org/t/p/w500${widget.posterUrl}",
                fit: BoxFit.cover,
              )
            ),
            Expanded(
              child: Container(
                color: Colors.grey[700],
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title.toString(),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            widget.voteAverage.toString(),
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Text(
                            widget.releaseDate.toString(),
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                       widget.description.toString(),
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Trailer',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildColumn('Official Trailer Trailer Trailer'),
                         const SizedBox(
                            width: 8.0,
                          ),
                          buildColumn('Action..Avenger:Infinity War')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildColumn(String text) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 100,
            color: Color(0xFFBDBDBD),
            child: Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
