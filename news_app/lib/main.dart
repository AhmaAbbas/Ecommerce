import 'package:flutter/material.dart';
import 'package:news_app/view_model/article_viewmodel.dart';
import 'package:provider/provider.dart';

import 'view/Home_Page.dart';

void main() {
  runApp(News_App());
}

class News_App extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticleList_ViewModel>(
      create: (context){
        return ArticleList_ViewModel();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_Page(),
      ),
    );
  }
}


