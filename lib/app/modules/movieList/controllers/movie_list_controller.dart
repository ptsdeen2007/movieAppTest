import 'dart:developer';

import 'package:get/get.dart';
import 'package:movie_app_test/app/const/movie_type.dart';
import 'package:http/http.dart' as http;
import 'package:movie_app_test/app/data/model/movie_response.dart';
import 'package:movie_app_test/app/helper/ui_helper.dart';

class MovieListController extends GetxController {
  final String movieType;
  var movieList=<Result>[].obs;
  var movieResponse=Rxn<MovieResponse>() ;

  MovieListController(this.movieType);

  @override
  void onInit() {
    loadMovies();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> loadMovies() async {
    String movieTypeAppend="";
    switch (movieType) {
      case MovieType.latest:
        movieTypeAppend = "now_playing";
        break;
      case MovieType.popular:
        movieTypeAppend = "popular";
        break;
    }

    var response = await http.get(Uri.parse(
        "https://api.themoviedb.org/3/movie/$movieTypeAppend?api_key=909594533c98883408adef5d56143539&language=en-US&page=1"));
    log(response.body);
    if (response.statusCode == 200) {

      var movieRps= MovieResponse.fromRawJson(response.body);
      movieResponse.value= movieRps;
      movieList.addAll(movieRps.results!);
     // update(movieList,true);
    }
    else {
      showToast(response.reasonPhrase??"");
      // print(response.reasonPhrase);
    }
  }


}
