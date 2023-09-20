class SourceModel {
 SourceModel({this.id = '', required this.name});

 String? id, name;

 Map<String, dynamic> toJson() {
   return {
     'id': id,
     'name': name,
   };
 }

 factory SourceModel.fromJson(Map<String, dynamic> json) {
   return SourceModel(
     id: json['id'],
     name: json['name'],
   );
 }
}
class NewsModel {
 NewsModel(this.status, this.totalResults, this.articles);

 String status;
 int totalResults;
 List<ArticleModel> articles;

 Map<String, dynamic> toJson() {
   return {
     'status': status,
     'totalResults': totalResults,
     'articles': articles,
   };
 }

 factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
       json['status'],
       json['totalResults'],
       (json['articles'] as List<dynamic>)
           .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
           .toList(),
     );
}
class ArticleModel {
 ArticleModel(this.source, this.author, this.title, this.description, this.url,
     this.urlToImage, this.publishedAt, this.content);

 String? author, description, urlToImage, content;
 String title, url, publishedAt;
 SourceModel source;

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

 factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
       SourceModel.fromJson(json['source'] as Map<String, dynamic>),
       json['author'],
       json['title'],
       json['description'],
       json['url'],
       json['urlToImage'],
       json['publishedAt'],
       json['content'],
     );
}
