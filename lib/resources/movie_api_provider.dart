import 'dart:convert';

import 'package:http/http.dart' show Client;
import 'package:sample_bloc/models/item_model.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = 'your-api-key';

  Future<ItemModel> fetchMovieList() async {
    print('entered');

    final response = await client.get(Uri.parse(
        'http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey'));

    print(response.body.toString());

    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
