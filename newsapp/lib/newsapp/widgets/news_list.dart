import 'package:flutter/material.dart';
import 'package:newsapp/newsapp/widgetItems/news_list_items.dart';
class NewsList  extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return 
       SizedBox(
        height: MediaQuery.of(context).size.height*0.35,
        width: MediaQuery.of(context).size.width*0.8,
    
        child: 
            ListView.separated(itemBuilder: (ctx,index){
                  return NewsListItems();
            }, separatorBuilder: (ctx,index){
              return Divider(height: 20,);
            }, itemCount: 5)  
          ,
        
      
    );
  }
}