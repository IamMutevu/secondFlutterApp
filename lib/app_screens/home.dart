import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        padding: EdgeInsets.only(left: 10.0, top: 40.0, right: 10.0),
        alignment: Alignment.center,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "KQ-310",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Nairobi to Amsterdam",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Air India",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "From Jaipur to Goa",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20.0,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.blueAccent
                    ),
                  ),
                ),
              ],
            ),
            FlightImageAsset(),
            FlightBookButton()
          ],
        )
      )
    );

  }
}

class FlightImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/plane.jpg');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0,);

    return Container(child: image);
  }

}

class FlightBookButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      height: 50.0,
      width: 250.0,
      child: RaisedButton(
        color: Colors.indigoAccent,
        child: Text(
            "Book Your Flight",
          style: TextStyle(
            fontFamily: "Raleway",
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),
        ),
        elevation: 6.0,
        onPressed: (){
          bookFlight(context);
          }),
        );
      }
    }

    void bookFlight(BuildContext context){
      var alertDialog = AlertDialog(
        title: Text("Flight booked successfully"),
        content: Text("Have a pleasant flight"),
      );
      
      showDialog(
        context: context,
        builder: (BuildContext context){
          return alertDialog;
        }
      );
    }