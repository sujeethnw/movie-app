import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movies_app/views/components/movie_details.dart';

import 'movies_name.dart';

class MovieTabScreen extends StatefulWidget {
  const MovieTabScreen({super.key, required icons});

  @override
  State<MovieTabScreen> createState() => _MovieTabScreenState();
}

class _MovieTabScreenState extends State<MovieTabScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
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
  List<String> movieTitile = [
    'POLLADHAVAN',
    'VADACHENNAI',
  ];

  Widget build(BuildContext context) {
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
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 100,
                            mainAxisSpacing: 100),
                    itemBuilder: (BuildContext context, int index) {
                      final image = images[index];
                      final title = movieTitile[index];
                      return MovieTile(title: title, image: image);
                    }),
                GridView.builder(
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      final image = images[index];
                      final title = movieTitile[index];
                      return MovieTile(title: title, image: image);
                    }),
                GridView.builder(
                    itemCount: images.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      final image = images[index];
                      final title = movieTitile[index];
                      return MovieTile(title: title, image: image);
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
                return MoviesName();
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
