import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movie_app_test/app/widget/movie_item.dart';

import '../controllers/movie_list_controller.dart';

class MovieListView extends StatelessWidget {
  final String movieType;

  const MovieListView({required this.movieType, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MovieListController controller =
        Get.put(MovieListController(movieType), tag: movieType);
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie ${movieType}'),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: controller.movieList.value.length,
            itemBuilder: (context, position) {
              var item=controller.movieList.value[position];
          return MovieItem(item);
        });
      }),
    );
  }
}
