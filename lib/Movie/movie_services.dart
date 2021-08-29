import 'package:dio/dio.dart';
import '../Movie/movie_model.dart';
import '../Post/post_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class MovieRepository {
  const MovieRepository(this.client);

  final Dio client;

  Future<List<MovieModel>> getMovies() async {
    try {
      final url =
          'https://api.themoviedb.org/3/trending/movie/week?api_key=060e7c76aff06a20ca4a875981216f3f';

      final response = await client.get(url);

      final movies = List<MovieModel>.of(
        response.data['results'].map<MovieModel>(
              (json) => MovieModel(
            title: json['title'],
            urlImage: 'https://image.tmdb.org/t/p/w185${json['poster_path']}',
          ),
        ),
      );

      return movies;
    } catch (e) {
      throw e;
    }
  }

  Future<List<Post>> getPost() async{
    List<Post> getPost;
    try {
      final url = 'https://jsonplaceholder.typicode.com/posts';
      var response = await http.get(url);
      if (response.statusCode == 200) {
        getPost = postFromJson(response.body.toString());

        getPost.forEach((element) {
          print(element.title);
        });
      } else {
        print('Request failed with status: ${response.statusCode}.');
      }
      return getPost;
    } catch (e) {
      throw e;
    }

  }
  
}