import 'package:flutter/material.dart';
import 'package:portfolio/screens/people.dart';
class NavigationDrawer extends StatefulWidget {
  NavigationDrawer({Key? key}) : super(key: key);
  

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
       color: Color.fromRGBO(50, 75, 205, 1),
       
       child: ListView(
        
         children:<Widget> [
           Padding(padding: EdgeInsets.only(top: 50)),
           CircleAvatar(
             radius: 50,
             backgroundImage: AssetImage("assets/paris.jpg"),
           ),
           SizedBox(height: 48,),
           ListTile(
             leading: Icon(Icons.people,size: 30,color: Colors.white,),
             title: Text("people",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
             onTap: (){
               Navigator.push(context, 
               MaterialPageRoute(builder: (context) =>PeopleScreen(),
               )
               );
             },
           ),
           SizedBox(height: 24,),

            ListTile(
             leading: Icon(Icons.update,size: 30,color: Colors.white,),
             title: Text("updates",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
             onTap: (){},
           ),
           SizedBox(height: 24,),

            ListTile(
             leading: Icon(Icons.favorite_border,size: 30,color: Colors.white,),
             title: Text("favourites",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
             onTap: (){},
           ),
           SizedBox(height: 24,),
            ListTile(
             leading: Icon(Icons.workspaces,size: 30,color: Colors.white,),
             title: Text("workflow",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
             onTap: (){},
           )
         ],
       ),

      ),
    
    );
  }
}