import 'package:sample_bloc/models/item_model.dart';
import 'package:sample_bloc/resources/movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
