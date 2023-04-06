import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/movieList/bindings/movie_list_binding.dart';
import '../modules/movieList/views/movie_list_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
 /*   GetPage(
      name: _Paths.MOVIE_LIST,
      page: () => const MovieListView(),
      binding: MovieListBinding(),
    ),*/
  ];
}
