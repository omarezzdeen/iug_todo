import 'package:flutter/material.dart';
import 'package:state_managment/dummy_data.dart';
import 'package:state_managment/news_model.dart';

class NewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
      ),
      body: ListView.builder(
          itemCount: newsList.length,
          itemBuilder: (context, index) {
            return NewsWidget(newsList[index]);
          }),
    );
  }
}

class NewsWidget extends StatelessWidget {
  NewsModel newsModel;
  NewsWidget(this.newsModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ListTile(
          title: Text(newsModel.author!),
          leading: CircleAvatar(
            child: Text(newsModel.author![0].toUpperCase()),
          ),
        ),
        Container(
          height: 300,
          child: Image.network(
            newsModel.urlToImage!,
            errorBuilder: (x, y, z) {
              return Icon(Icons.error);
            },
          ),
        ),

      ],
    );
  }
}

