class Article{
  String? title;
  String? description;
  String? imageurl;
  String? articleurl;
  Article({this.title, this.description, this.imageurl, this.articleurl});
  factory Article.fromjson(Map<String,dynamic> jsondata)
  {
    return Article(
      title: jsondata['title'],
      description: jsondata['description'],
      articleurl: jsondata['url'],
      imageurl:  jsondata['urlToImage'],
    );

  }



}