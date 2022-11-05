import 'package:flutter/material.dart';
import 'package:flutter_03_peliculas/providers/movies_provider.dart';
import 'package:flutter_03_peliculas/search/search_delegate.dart';
import 'package:flutter_03_peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined),
            onPressed: () {
              showSearch(
                context: context,
                delegate: MovieSearchDelegate(),
              );
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cardswiper
            CardSwiper(
              movies: moviesProvider.onDisplayMovies,
            ),
            // horizontal list
            MovieSlider(
              movies: moviesProvider.popularMovies,
              title: 'POPULARS!',
              onNextPage: () => moviesProvider.getPopularMovies(),
            ),
          ],
        ),
      ),
    );
  }
}
