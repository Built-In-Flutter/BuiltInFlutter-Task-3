import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

enum Selected{
    allnews,business,politics,tech,science
}
 
 String selectedButton=Selected.allnews.toString();



class CategorySelection extends StatefulWidget {
  const CategorySelection({
    Key? key,
    required this.buttonNames,
  }) : super(key: key);

  final List<String> buttonNames;

  @override
  State<CategorySelection> createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {



Widget txtbtns(String btnname,bool is_selected){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(onPressed: (){
          setState(() {
            switch(btnname){
              case 'All news':
                selectedButton=Selected.allnews.toString();
                break;
              case 'Business':
                selectedButton=Selected.business.toString();
                break;
              case 'Politics':
                selectedButton=Selected.politics.toString();
                break;
              case 'Tech':
                selectedButton=Selected.tech.toString();
                break;
              case 'Science':
                selectedButton=Selected.science.toString();
                break;
            }
          });
        }, child: Text(btnname,style:  TextStyle(color:  Colors.black,
        fontSize: 15,fontWeight: is_selected?FontWeight.bold:FontWeight.w300),)),
      if(is_selected)Container(
        
        height: 5,
        width: 40,
        
        color: Colors.red,
      )],
    );
}

  
  
  @override
  Widget build(BuildContext context) {
    
    return SingleChildScrollView(
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: 
          widget.buttonNames.map((item) => txtbtns(item,
          selectedButton.substring(selectedButton.indexOf('.')+1)==item.replaceAll(' ','').toLowerCase()? true:false)).toList()
            
        ,)
        ,
    );
  }
}