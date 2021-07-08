import 'package:flutter/material.dart';
class PeopleScreen extends StatefulWidget {
  PeopleScreen({Key? key}) : super(key: key);

  @override
  _PeopleScreenState createState() => _PeopleScreenState();
}


class _PeopleScreenState extends State<PeopleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column (
       children:<Widget> [
         Container(
           height: 600,
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage("assets/dc.jpg"),
               fit: BoxFit.cover,
             ),
           ),
         ),
       ],

     ),
    );
  }
}