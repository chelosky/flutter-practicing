import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('Movie Provider...');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {}
}
