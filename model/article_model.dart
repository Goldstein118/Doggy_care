import 'source_model.dart';

class Article {
  Article(this.source, this.author, this.title, this.description, this.url,
      this.urlToImage, this.publishedAt, this.content);

  String? author, content,description ,  urlToImage;
  String title, url, publishedAt;
  Source source;

  Map<String, dynamic> toJson() {
    return {
      'author': author,
      'description': description,
      'urlToImage': urlToImage,
      'content': content,
      'title': title,
      'url': url,
      'publishedAt': publishedAt,
      'source': source,
    };
  }

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        Source.fromJson(json['source'] as Map<String, dynamic>),
        json['author']  ,
        json['title'],
        json['description'],
        json['url'],
        json['urlToImage'],
        json['publishedAt'],
        json['content'],
      );
}