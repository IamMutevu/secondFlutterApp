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
  var _currencies = ['Rupees', 'Dollar', 'KES', 'Others'];
  var _currentItemSelected = 'Rupees';

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
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  "Type your favorite city",
                  style: TextStyle(fontSize: 16.0, fontFamily: "Raleway"),
                ),
              ),
              TextField(
                onSubmitted: (String userInput){
                  setState(() {
                    nameCity = userInput;
                  });

                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                child: DropdownButton<String>(

                  items: _currencies.map((String dropDownStringItem){
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),

                  onChanged: (String newValueSelected){
                    _newItemSelected(newValueSelected);
                  },

                  value: _currentItemSelected,
                ),
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

  void _newItemSelected(String newValueSelected){
    setState(() {
      this._currentItemSelected = newValueSelected;
    });
  }
}