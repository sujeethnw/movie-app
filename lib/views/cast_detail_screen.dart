import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/views/mixins.dart';
import 'package:movies_app/model/build_tvshows.dart';
import 'package:movies_app/views/movie_tab_screen.dart';
import 'package:provider/provider.dart';

import '../model/build_app_state.dart';

class CastDetailScreen extends StatefulWidget {
  const CastDetailScreen({super.key, required this.id});

  final int id;

  @override
  State<CastDetailScreen> createState() => _CastDetailScreenState();
}

class _CastDetailScreenState extends State<CastDetailScreen>
    with TickerProviderStateMixin, MovieMixin {
  late final TabController tabController =
  TabController(length: 2, vsync: this);
  var loading = true;

  @override
  void initstate() {
    super.initState();
    tabController;
    getData();
  }

  Future<void> getData() async {
    setState(() {
      loading = true;
    });
    await getCastMovie(id: widget.id);
    await getCastForId(id: 1);
    await getTvShowsCast(id: widget.id);
    setState(() {
      loading = false;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cast = context
        .watch<BuildAppState>()
        .castforid;
    final movie = context
        .watch<BuildAppState>()
        .MoviesCast;
    final tv = context
        .watch<BuildAppState>()
        .TvShowsCast;
    return Scaffold(
        appBar: AppBar(
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Align(
                child: Text("DHANUSH"),
                alignment: Alignment.topLeft,
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                       Image.network(
                          ("https://image.tmdb.org/t/p/w500/${cast?.profilepath??''}"))

                ],
              )
            ],
          ),
          bottom: PreferredSize(
              preferredSize: Size(MediaQuery
                  .of(context)
                  .size
                  .width, 150),
              child: TabBar(controller: tabController, tabs: const <Widget>[
                Tab(
                  text: 'Movie',
                  icon: Icon(Icons.mail),
                ),
                Tab(
                  text: 'TVSHOWS',
                  icon: Icon(Icons.ad_units),
                )
              ])),
        ),
        body: TabBarView(controller: tabController, children: <Widget>[
          /*  GridView.builder(
              itemCount: cast.id,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                 final to=cast?[index];
                final titles = to.
                final images =to.
                return MovieTile(
                  title: titles?.name??'',
                  image: image?.posterpath??'',
                );
              }),*/
          GridView.builder(
              itemCount: movie?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                final last = movie?[index];
                final title = last?.title;
                final image = last?.posterpath;
                return MovieTile(
                  title: title ?? '',
                  image: image ?? '',
                );
              }),
          GridView.builder(
              itemCount: tv?.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                final po = tv?[index];
                final image = po?.posterpath;
                final tit = po?.name;
                return MovieTile(title: tit ?? '', image: image ?? '');
              }),
        ]));
  }
}
