import 'package:flutter/material.dart';

import '../cast_detail_screen.dart';
import '../screens/cast_detail_screen.dart';

class MovieDetails extends StatelessWidget {
  const MovieDetails({super.key, required this.castName, required this.image});

  final String castName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return CastDetailScreen(id:0,);
        }));
      },
      child: Column(
        children: [
          Image.network(
            image,
            height: 60,
            width: 60,
          ),
          const SizedBox(
            width: 20,
            height: 20,
          ),
          Text(
            castName,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}

extension on String {
  asset() {}
}
