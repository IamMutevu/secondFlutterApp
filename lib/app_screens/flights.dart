import 'package:flutter/material.dart';

class Flights extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Services"),),
      body: getListView(),
    );
  }
}

Widget getListView(){

  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View!"),
        trailing: Icon(Icons.wb_sunny),
        onTap: (){
          debugPrint("Tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.desktop_windows),
        title: Text("Windows"),
      ),
      ListTile(
        leading: Icon(Icons.phone_android),
        title: Text("Phone"),
      ),
      ListTile(
        leading: Icon(Icons.tablet),
        title: Text("Tablet"),
      ),
      ListTile(
        leading: Icon(Icons.language),
        title: Text("Language"),
      )
    ]
  );

  return listView;
}