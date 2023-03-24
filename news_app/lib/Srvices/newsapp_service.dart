import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/Models/Article.dart';

import '../Models/Articles.dart';

class News_Services{
  Articles? articles;
  Future<List<Article?>?> get_news() async{
    try{
      String base_url='https://newsapi.org';
      String apikey="2df0fe914cc945df9a2fa38d36e42445";
      Uri url= Uri.parse('$base_url/v2/top-headlines?country=us&apiKey=$apikey');
      http.Response responce= await http.get(url);
     if(responce.statusCode==200)
       {
         String data=responce.body;
         var jsondata=jsonDecode(data);
         articles=Articles.fromjson(jsondata);
         List<Article> articleslist= articles!.articles!.map((e) => Article.fromjson(e)).toList();
         return articleslist;
       }
     else
       {
         print("Status code: ${responce.statusCode}");
       }
    }catch(error)
    {
      print("error: $error");
    }

  }
  Future<dynamic> get_newsBycategory(String category) async{
    try{
      String base_url='https://newsapi.org';
      String apikey="2df0fe914cc945df9a2fa38d36e42445";
      Uri url= Uri.parse('$base_url/v2/top-headlines?country=us&category=$category&apiKey=$apikey');
      http.Response responce= await http.get(url);
      if(responce.statusCode==200)
      {
        String data=responce.body;
        var jsondata=jsonDecode(data);
        articles=Articles.fromjson(jsondata);
        List<Article> articleslist= articles!.articles!.map((e) => Article.fromjson(e)).toList();
        return articleslist;
      }
      else
      {
        print("Status code: ${responce.statusCode}");
      }
    }catch(error)
    {
      print("error: $error");
    }

  }

}
//https://newsapi.org/v2/top-headlines?country=us&apiKey=2df0fe914cc945df9a2fa38d36e42445
//https://newsapi.org/docs/endpoints/top-headlines