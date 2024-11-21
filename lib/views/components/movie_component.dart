import 'package:flutter/material.dart';
import 'movie_details.dart';

class MovieComponent extends StatefulWidget {
  const MovieComponent(
      {super.key, required this.MovieTitle, required this.Image});

  final String MovieTitle;
  final String Image;

  @override
  State<MovieComponent> createState() => _MovieComponentState();
}

class _MovieComponentState extends State<MovieComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

      },
      child: Container(
        child: Column(
          children: [
             Image.network(widget.Image),
            const SizedBox(
              width: 10,
            ), Text(widget.MovieTitle, ),

          ],
        ),
      ),
    );
  }
}
