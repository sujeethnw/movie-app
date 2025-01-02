import 'package:flutter/material.dart';
import 'package:movies_app/model/build_app_state.dart';
import 'package:movies_app/view_model/app_view_model.dart';
import 'package:provider/provider.dart';
//import 'package:movie_app/views/screens/app/movie_home_page.dart';

mixin MovieMixin<T extends StatefulWidget> on State<T> {
  void showSnack(String e) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e)));
  }

  Future<void> getPopular() async {
    try {
      await context.appViewModel.getPopular();
    } catch (e) {
      showSnack(e.toString());
    }
  }

  Future<void> getTopRated() async {
    try {
      await context.appViewModel.getTopRated();
    } catch (e) {
      showSnack(e.toString());
    }
  }

  Future<void> getUpcomingMovies() async {
    try {
      await context.appViewModel.getUpcomingMovies();
    } catch (e) {
      showSnack(e.toString());
    }
  }

  Future<void> getMovieForID({required int id}) async {
    try {
      await context.appViewModel.getMovieforID( id);
    } catch (e) {
      showSnack(e.toString());
    }
  }
  Future<void> getCastForId({required int id}) async{
    try{
      await context.appViewModel.getCastforId(id);
    }catch (e){
      showSnack(e.toString());
    }
  }

  Future<void> getCastMovie({required int id}) async {
    try {
      await context.appViewModel.getCastMovie( id);
    } catch (e) {
      showSnack(e.toString());
    }
  }

  Future<void> getMoviesCast({required int id}) async {
    try {
      await context.appViewModel.getMoviesCast(id);
    } catch (e) {
      showSnack(e.toString());
    }
  }

  Future<void> getTvShowsCast({required int id}) async {
    try {
      await context.appViewModel.getTvShowsCast( id);
    } catch (e) {
      showSnack(e.toString());
    }
  }
}

extension on BuildContext {
 AppViewModel get appViewModel => read<AppViewModel>();
  BuildAppState get appst => watch<BuildAppState>();
}
