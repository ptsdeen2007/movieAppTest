import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_test/app/const/app_const.dart';
import 'package:movie_app_test/app/const/movie_type.dart';
import 'package:movie_app_test/app/modules/movieList/views/movie_list_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.new_releases),
              label: MovieType.latest,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.podcasts),
              label: MovieType.popular,
            ),
          ],
          currentIndex: controller.curretPage.value,
          onTap: controller.pageTaped,
        ),
        body: [
          MovieListView(movieType: MovieType.latest),
          MovieListView(movieType: MovieType.popular),
        ][controller.curretPage.value],
      );
    });
  }
}
