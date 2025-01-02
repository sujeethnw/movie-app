import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movies_app/model/build_app_state.dart';
import 'package:movies_app/model/build_movie.dart';
import 'package:movies_app/views/mixins.dart';
import 'package:movies_app/views/components/movie_details.dart';
import 'package:provider/provider.dart';

import 'movies_name.dart';

class MovieTabScreen extends StatefulWidget {
  const MovieTabScreen({super.key, required icons, });
  @override
  State<MovieTabScreen> createState() => _MovieTabScreenState();
}

class _MovieTabScreenState extends State<MovieTabScreen>
    with TickerProviderStateMixin,MovieMixin {
  late TabController tabController;
  var loading=false;

  @override
  void initState() {
    super.initState();
    getData();
    tabController = TabController(length: 3, vsync: this);
  }

Future<void> getData() async{
    await getPopular();
    await getTopRated();
    await getUpcomingMovies();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }


@override
  Widget build(BuildContext context) {
    BuiltList<BuildMovie> popularmovies=context.watch<BuildAppState>().Popular;
    BuiltList<BuildMovie>? upcomingmovie=context.watch<BuildAppState>().UpcomingMovies;
    BuiltList<BuildMovie>? topRated=context.watch<BuildAppState>().topRated;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('BOOK MOVIE'),
              backgroundColor: Colors.blueGrey,
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ],
              leading: IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
              ),
              bottom: TabBar(tabs: [
                Tab(
                  child: Text('POPULAR'),
                ),
                Tab(
                  child: Text('TOP RATED'),
                ),
                Tab(
                  child: Text('UPCOMING MOVIES'),
                ),
              ]),
            ),
            body: TabBarView(
              controller: tabController,
              children: <Widget>[
                GridView.builder(
                    itemCount: popularmovies.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 100,
                            mainAxisSpacing: 100),
                    itemBuilder: (BuildContext context, int index) {
                      final movie =popularmovies[index];
                      final image = movie.posterpath;
                      final title = movie.title;

                      return MovieTile(title: title?? '', image: image?? '');
                    }),
                GridView.builder(
                    itemCount: upcomingmovie?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      final mo = upcomingmovie?[index];
                      final title = mo?.title;
                      final image=mo?.posterpath;

                      return MovieTile(title: title??'', image: image??'');
                    }),
                GridView.builder(
                    itemCount:  topRated?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      final to= topRated?[index];
                      final image = to?.posterpath;
                      final title = to?.title;
                      return MovieTile(title: title??'', image: image??'');
                    })
              ],
            )));
  }
}

class MovieTile extends StatelessWidget {
  const MovieTile({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext context) {
                return MoviesName(id: 1,);
              }),
            );
          },
          child: Image.network(
            image,
            width: 80,
            height: 80,
          ),
        ),
        Text(title),
      ],
    );
  }
}
