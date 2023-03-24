import 'Article.dart';

class Articles{
  List<dynamic>? articles;

  Articles({this.articles});
  factory Articles.fromjson(Map<String,dynamic> jsondata){
    return  Articles(
      articles: jsondata["articles"],
    );
  }
}