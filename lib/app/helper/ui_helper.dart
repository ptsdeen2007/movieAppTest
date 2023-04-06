import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app_test/app/const/app_const.dart';

showToast(String message){
  Get.snackbar("Message", message,);
}

Widget networkImage(
    String url, {
      BoxFit? fit,
      double? height,
      double? width,
    }) {
  return CachedNetworkImage(
      imageUrl: AppConst.imageRoot+url,
      placeholder: (context, url) => Icon(Icons.broken_image),
      errorWidget: (context, url, error) => Container(),
      fit: fit,
      height: height,
      width: width
  );
}

//vertical spacing
Widget verticalSpace(double height) {
  return SizedBox(height: height);
}

//horizontal spacing
Widget horizontalSpace(double width) {
  return SizedBox(width: width);
}