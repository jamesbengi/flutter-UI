import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class GetData extends StatefulWidget {
  GetData({Key? key}) : super(key: key);

  @override
  _GetDataState createState() => _GetDataState();
}
_launchURL() async {
  const url = 'https://en.wikipedia.org/wiki/Washington,_D.C.';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class _GetDataState extends State<GetData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children:<Widget> [
           Container(
             height: 500,
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("assets/dc.jpg"),
               fit: BoxFit.cover,

               ),
               
               
             ),
             
             child:Padding(
               padding:EdgeInsets.only(top:50),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                 
                 children:<Widget> [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children:<Widget> [
                       IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,),
                       )
                     ],
                   ),
                   Padding(
                     padding:EdgeInsets.all(20) ,
                     child: Column(
                       children: <Widget>[
                      
                         Text("Washington Dc",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                         ),
                         SizedBox(height: 10),
                         Row(
                           children:<Widget> [
                             Text("EXPLORE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                             IconButton(onPressed:_launchURL,
                             icon: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,)),
                           ],
                         ),
                       ],
                     ),
                     )
                 ],
               ),
               )
           ),
           Container(
             padding: EdgeInsets.all(20),
             child: Column(
               children:<Widget> [
                 Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:<Widget> [
                 Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),),
                 Text("All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),)
               ],

                 ),
                 SizedBox(height: 10),
                 Container(
                   height: 100,
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: <Widget>[
                       AspectRatio(
                         aspectRatio: 2/3,
                         child: Container(
                           decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                             image: DecorationImage(
                               image: AssetImage("assets/tower.jpg"),
                               fit: BoxFit.cover,
                              
                             ),
                           ),
                           child:Align(
                             alignment:Alignment.bottomLeft,
                             child:Text("Paris",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                           ),
                         ),

                         ),
                        

                     ],
                   ),

                 ),
                 
               ],
             ),
           ),

         ],
       ),
    );
  }
  
}