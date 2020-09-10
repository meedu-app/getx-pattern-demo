import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_pattern_demo/app/data/models/movie.dart';
import 'package:getx_pattern_demo/app/modules/home/home_controller.dart';
import 'package:getx_pattern_demo/app/modules/home/local_widgets/movie_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: _.logOut,
            )
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          child: ListView.builder(
            itemBuilder: (ctx, index) {
              final Movie movie = _.movies[index];
              return MovieItem(movie: movie);
            },
            itemCount: _.movies.length,
          ),
        ),
      ),
    );
  }
}
