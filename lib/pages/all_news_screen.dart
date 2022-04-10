import 'package:flutter/material.dart';
import 'package:state_managment/data/dummy_data.dart';
import 'package:state_managment/news_app.dart';
import 'package:state_managment/widgets/NewsWidget.dart';

class AllNewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsWidget(
                newsList[index]);
          }),
    );
  }
}
