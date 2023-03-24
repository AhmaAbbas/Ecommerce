import 'package:flutter/material.dart';
import 'package:news_app/view_model/article_viewmodel.dart';
import 'package:provider/provider.dart';

import '../Srvices/newsapp_service.dart';

class Home_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: GestureDetector(
          onTap: ()async{
            Provider.of<ArticleList_ViewModel>(context,listen: false).fechdata();
            print( Provider.of<ArticleList_ViewModel>(context,listen: false).get_listarticle());
          },
          child: Container(
            child: Text("featch data",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
