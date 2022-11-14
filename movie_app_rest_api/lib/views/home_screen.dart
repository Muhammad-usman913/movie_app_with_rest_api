import 'package:flutter/material.dart';
import 'package:movie_app_rest_api/models/popular_movies.dart';
import 'package:movie_app_rest_api/services/api_helper.dart';
import 'package:movie_app_rest_api/views/details_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ApiHelper apiHelper = ApiHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popular movies'),
      ),
      body: Column(
        children: [
         Expanded(
           child: FutureBuilder(
             future: apiHelper.getPopularMovies(),
               builder: (context,AsyncSnapshot<PopularMovies> snapshot){
               if(!snapshot.hasData){
               return Text('loading');
               }else{
                 print('Else is executed');

                 return GridView.builder(
                     itemCount: snapshot.data!.results!.length,
                     gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                         maxCrossAxisExtent: 100,
                         childAspectRatio: 2 / 3,
                         crossAxisSpacing: 5,
                         mainAxisSpacing: 5),
                     itemBuilder: (BuildContext context , index){
                       return InkWell(
                         onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(
                             posterUrl: snapshot.data!.results![index].posterPath, description: snapshot.data!.results![index].overview,
                             title: snapshot.data!.results![index].title, movieId: snapshot.data!.results![index].id, releaseDate: snapshot.data!.results![index].releaseDate,
                             voteAverage: snapshot.data!.results![index].voteAverage))),
                         child: Image(
                             image: NetworkImage('https://image.tmdb.org/t/p/w185${snapshot.data!.results![index].posterPath}')),
                       );
                     });
               }

               }
           ),
         )
        ],
      ),
    );
  }
}
