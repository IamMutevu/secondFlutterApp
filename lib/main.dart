import 'package:flutter/material.dart';
import './app_screens/home.dart';
import './app_screens/flights.dart';
import './app_screens/long_list.dart';

void main(){
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: LongList(),
  ));


}