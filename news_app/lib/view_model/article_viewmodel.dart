import 'package:flutter/foundation.dart';
import 'package:news_app/Models/Article.dart';
import 'package:news_app/Srvices/newsapp_service.dart';

class ArticleList_ViewModel extends ChangeNotifier{
List<Article>? _articellist=[];
List<Article>? _articellistbycatgory=[];
Future<void> fechdata()async{
  _articellist =(await News_Services().get_news())!.cast<Article>();
  notifyListeners();
}
Future<void> fechdataBycategory (String category )async{
  _articellistbycatgory =(await News_Services().get_newsBycategory(category))!.cast<Article>();
  notifyListeners();
}
List<Article>? get_listarticle()
{
  return _articellist;
}
List<Article>? articellistbycatgory()
{
  return _articellistbycatgory;
}
}