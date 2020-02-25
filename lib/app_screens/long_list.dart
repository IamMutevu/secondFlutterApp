import 'package:flutter/material.dart';

class LongList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
    );
  }
}

List<String> getListElements(){

  var items = List<String>.generate(1000, (counter) => "Item $counter");

  return items;
}

Widget getListView(){

  var listItems = getListElements();

  var listView = ListView.builder(
      itemBuilder: (context, index){
        return ListTile(
          leading: Icon(Icons.satellite),
          title: Text(listItems[index]),
          onTap: (){
            debugPrint('${listItems[index]} was tapped');
          },
        );
      },
  );

  return listView;
}