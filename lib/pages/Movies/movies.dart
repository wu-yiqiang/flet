import "package:get/get.dart";
import 'package:flutter/material.dart';
import 'package:flet/pages/Movies/controller/movies_controller.dart';
class MoviesPage extends StatelessWidget {
  final controller = Get.find<MoviesController>();
  final state = Get.find<MoviesController>().state;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("movies page"),
    );
  }
}


