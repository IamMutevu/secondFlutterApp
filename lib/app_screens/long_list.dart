import 'package:flutter/material.dart';

class LongList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Long List"),),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          debugPrint("FAB working");
        },
        child: Icon(Icons.add),
        tooltip: "Add an item",
      ),
    );
  }
}

void showSnackBar(BuildContext context, String item){
  var snackBar = SnackBar(
    content: Text('You tapped $item'),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: (){
        debugPrint('Undo clicked');
      },
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
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
            //debugPrint('${listItems[index]} was tapped');
            showSnackBar(context, listItems[index]);
          },
        );
      },
  );

  return listView;
}