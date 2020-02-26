import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteCityState();
  }

}

class _FavoriteCityState extends State<FavoriteCity>{

  String nameCity = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Stateful App Example"),),
      body: Center(
        child: Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          child: Column(
            children: <Widget>[
              TextField(
                onSubmitted: (String userInput){
                  setState(() {
                    nameCity = userInput;
                  });

                },
              ),
              Padding(
                  padding: EdgeInsets.all(30.0),
                  child:Text(
                    "Your city is $nameCity",
                    style: TextStyle(fontSize: 20.0, fontFamily: "Raleway"),
                  )),
            ],
          ),
        ),
      )
    );
  }


}