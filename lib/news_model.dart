class NewsModel {
  bool isFavourite = false;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  NewsModel(this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content);

  NewsModel.fromMap(Map<String, dynamic> map) {
    author = map['author']??'not defined';
    title = map['title'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    publishedAt = map['publishedAt'];
    content = map['content'];
  }
}
