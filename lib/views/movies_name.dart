import 'package:flutter/material.dart';
import 'package:movies_app/model/build_movie.dart';
import 'components/movie_details.dart';
//import 'package:movies_app/core/';

class MoviesName extends StatefulWidget {
  const MoviesName({super.key});

  @override
  State<MoviesName> createState() => _MoviesNameState();
}

class _MoviesNameState extends State<MoviesName> {
  @override
  List casts = [
    ('https://images.filmibeat.com/ph-big/2022/07/dhanush_165778903530.jpg'),
    ('https://images.filmibeat.com/ph-big/2022/07/dhanush_165778903530.jpg')
  ];
  List<String> name = ['DHANUSH', 'DHANUSH'];

  var preferredSize;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 300,
        flexibleSpace: Image(
          image: NetworkImage(
              'https://images.filmibeat.com/ph-big/2022/07/dhanush_165778903530.jpg'),
          fit: BoxFit.fill,
        ),
        title: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: ElevatedButton(
                      onPressed: () {}, child: Text('BOOK TICKET')),
                ),
                Row(
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Text(
                          'POLLADHAVAN',
                          style: TextStyle(color: Colors.deepOrange),
                        )),
                    //FilledButton(onPressed: () {}, child: Text('7.5'))
                  ],
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: FilledButton(
                        onPressed: () {}, child: Text('31.03.2006')))
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [

          Align(alignment: Alignment.topLeft,
            child:
            Text(
              "SYNOPSIS",
              style: TextStyle(fontSize: 30),
            ),),
          Text(
              'Prabhu is a young man whose life significantly improves after buying a bike, as he gets a decent job and gets closer to his crush Hema. Things take a deadly turn after his bike gets stolen, prompting Prabhu to relentlessly search for it with the help of his friends. This hunt eventually pits him against the underworld as he learns his bike was used to transport drugs. Prabhu must prepare for the worst and protect his family from an egoistical gangster, while continuing the search for his beloved bike'),
          Text('Cast'),
          Expanded(
              child: ListView.builder(
                  itemCount: casts.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final cast = casts[index];
                    final names = name[index];
                    return MovieDetails(castName: names, image: cast);
                  })),

          const Text('ABOUT',style: TextStyle(fontSize: 15),),
          Column(
            children: [
              Row(
                children: [
                  const Text('adult'),
                  Text(BuildMovie().adult.toString()),
                ],
              ),
              /* Row(
                children: [
                  const Text('backdrop path'),
                  Text(BuildMovie().backdroppath.toString()),
                ],
              ),*/

              Row(
                children: [
                  const Text('genreIDs'),
                  Text(BuildMovie().genreIds.toString()),
                ],
              ),
              Row(
                children: [
                  const Text('id'),
                  Text(BuildMovie().id.toString()),
                ],
              ),
              Row(
                children: [
                  const Text('originalanguage'),
                  Text(BuildMovie().originalanguage.toString()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
