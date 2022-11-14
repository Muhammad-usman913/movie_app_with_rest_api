
import 'dart:convert';

import '../models/popular_movies.dart';
import 'package:http/http.dart' as http;
class ApiHelper{

  Future<PopularMovies> getPopularMovies() async{

      final response = await http.get(Uri.parse('http://api.themoviedb.org/3/movie/popular?api_key=d5de8849bf12281927f86b94bad62966'));
      var data = jsonDecode(response.body.toString());
      if(response.statusCode == 200){
        print('The page number is ${data['page']}');
       return PopularMovies.fromJson(data);
      }
    else{
      throw Exception('Error');
    }

  }

}