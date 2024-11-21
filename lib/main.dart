import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movies_app/model/build_app_state.dart';
import 'package:movies_app/view_model/app_view_model.dart';
import 'package:movies_app/views/movie_tab_screen.dart';

void main() {
  runApp(StateNotifierProvider<AppViewModel, BuildAppState>(
    create: (_) => AppViewModel(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MovieTabScreen(
        icons: Icon(Icons.ice_skating),
      ),
    );
  }
}

// This trailing comma makes auto-formatting nicer for build methods.
