import 'package:flutter/material.dart';
import 'package:movies_app/views/movie_tab_screen.dart';

class CastDetailScreen extends StatefulWidget {
  const CastDetailScreen({super.key});

  @override
  State<CastDetailScreen> createState() => _CastDetailScreenState();
}

class _CastDetailScreenState extends State<CastDetailScreen>
    with TickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 2, vsync: this);

  @override
  void initstate() {
    super.initState();
    tabController;
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  List<String> images = [
    'https://wallpaperaccess.com/full/4320272.jpg',
    'https://wallpaperaccess.com/full/4320272.jpg',
  ];
  List<String> movieTitle = ['VADACHENNAI', 'ASURAN'];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.end,
            children: [Align(
                child: Text("DHANUSH"),alignment: Alignment.topLeft,
              ),SizedBox(width: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(alignment: Alignment.centerRight,
                      image: NetworkImage(
                          'https://wallpaperaccess.com/full/4320272.jpg'),width: 60,height: 60,fit: BoxFit.fitWidth,
                  ),
                ],
              )
            ],
          ),
          bottom: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 150),
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
          GridView.builder(
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                final image = images[index];
                final title = movieTitle[index];
                return MovieTile(
                  title: title,
                  image: image,
                );
              }),
          GridView.builder(
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                final image = images[index];
                final title = movieTitle[index];
                return MovieTile(
                  title: title,
                  image: image,
                );
              }),
          GridView.builder(
              itemCount: images.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                final image = images[index];
                final title = movieTitle[index];
                return MovieTile(
                  title: title,
                  image: image,
                );
              })
        ]));
  }
}
