import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/Pages/home_page.dart';

class StartPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Color.fromRGBO(254, 250, 224,1),
     appBar:
        AppBar(
           centerTitle: true,
           backgroundColor: Color.fromRGBO(212, 163, 115,1),
           elevation: 0,
           title: Text(
             'TO DO',
             style: TextStyle(
               fontSize: 35.0,
               fontWeight: FontWeight.w500,
               fontFamily: 'Pacifico',
               // fontWeight: FontWeight.bold,
               color: Colors.white,
             ),
           ),
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
         ),

       body: Container(
         child:
         Column(
          // mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Expanded(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                       child: Image(
                           image: AssetImage('assets/images/—Pngtree—to do list and eyeglass_6991427.png'),
                         width: 400.0,
                         height: 400.0,
                         ),
                     ),

                   Text(
                     'Become focused, organized, and calm with TO DO.',
                     style: TextStyle(
                       fontSize: 40.0,
                       fontFamily: 'Pacifico',
                       color: Color.fromRGBO(2, 48, 71,1),
                     ),
                     textAlign: TextAlign.center,
                   ),
               
               
               
                 ],
               ),
             ),
             /*Container(
               width: double.infinity,
               color:Color.fromRGBO(212, 163, 115,1) ,
               child: MaterialButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context)=> MyHomePage(),
                 )
                 );
               },
                 height: 70.0,
                 child: Text(
                   'Plan Your Day ',
                   style: TextStyle(
                       fontSize:30.0,
                       fontFamily: 'Rubik',
                       fontWeight: FontWeight.bold,
                       color: Colors.white
                   ),
                 ),
               ),
             ),*/
             GestureDetector(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(
                   builder: (context)=> MyHomePage(),
                 )
                 );
               },
               child: Container(
                 width: 200.0,
                 height: 70.0,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(27),
                     color:Color.fromRGBO(212, 163, 115,1),),
                 child: Padding(
                   padding:  EdgeInsets.all(10.0),
                   child: Text("Start",
                     style: TextStyle(
                         fontSize:30.0,
                         fontFamily: 'Rubik',
                         fontWeight: FontWeight.bold,
                         color: Colors.white
                     ),
                     textAlign: TextAlign.center,),
                 ),
               ),
             )
           ],
         ),
       ),
   
   );
  }
  
}