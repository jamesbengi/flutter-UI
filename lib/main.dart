import 'package:flutter/material.dart';
import 'package:portfolio/screens/get.dart';
import 'package:portfolio/screens/navigation%20.dart';

void main() {
  runApp( new MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ) );
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
     
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/paris.jpg"),
            fit:BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.3),
              ],
            ),
          ),
          child: Padding(
            padding:const EdgeInsets.all(30),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("See the world",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),),
                SizedBox(height: 40),
                Text("An adventure you'll never forget",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 40),
                Container(
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                  child:InkWell(
                    onTap: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>GetData()),
                      );
                    },

                 child:  Center(
                  child: Text("Get Started",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                ) ,
                ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child:InkWell(
                   child: Center(
                    child: Text("Create Account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                  ),
                ),
              ],
            ) ,
            ),
        ),
      ),
    );
  }
}