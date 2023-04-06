import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_test/app/data/model/movie_response.dart';
import 'package:movie_app_test/app/helper/ui_helper.dart';

class MovieItem extends StatelessWidget {
  final Result item;

  const MovieItem(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            networkImage(item.posterPath!),
            verticalSpace(8),
            Text(item.title!,style: Get.textTheme.titleSmall),
            verticalSpace(8)
,          Text(item.overview!,style: Get.textTheme.caption),
            verticalSpace(8)
          ],
        ),
      ),
    );
  }
}
