import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/model/build_app_state.dart';
import 'package:movies_app/model/build_cast.dart';
import 'package:movies_app/views/mixins.dart';
import 'package:movies_app/model/build_movie.dart';
import 'package:provider/provider.dart';
import 'components/movie_details.dart';
//import 'package:movies_app/core/';

class MoviesName extends StatefulWidget {
  const MoviesName({super.key, required this.id});
  final int id;

  static var length;

  @override
  State<MoviesName> createState() => _MoviesNameState();
}

class _MoviesNameState extends State<MoviesName> with MovieMixin{
  @override


  var preferredSize;
  bool loading=false;
  Future<void> getData() async{
    setState(() {
      loading=true;
    });
    await getMovieForID(id:widget.id);
    await getCastMovie(id:widget.id);
    setState(() {
      loading=false;
    });}

  Widget build(BuildContext context) {
    final movies=context.watch<BuildAppState>().movieforid;
    final casts=context.watch<BuildAppState>().CastMovie;


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 300,
        flexibleSpace: Image(
          image: NetworkImage('https://image.tmdb.org/t/p/w500/${movies?.posterpath??''}'),
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
                          movies?.title?? '',
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
          Text(movies?.overview??''),
          Text('Cast'),
          Expanded(
              child: ListView.builder(
                  itemCount: casts?.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final ca=casts?[index];
                    final name = ca?.name;
                    final cast = ca?.profilepath;
                    return MovieDetails(castName: name??'', image: cast??'');
                  })),

          const Text('ABOUT',style: TextStyle(fontSize: 15),),
          Column(
            children: [
              Row(
                children: [
                  const Text('adult'),
                  Text(movies?.adult.toString()??''),
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
                  Text(movies?.genreIds.toString()??''),
                ],
              ),
              Row(
                children: [
                  const Text('id'),
                  Text(movies?.id.toString()??''),
                ],
              ),
              Row(
                children: [
                  const Text('originalanguage'),
                  Text(movies?.originalanguage.toString()??''),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
