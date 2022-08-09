import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home:bank()
  ));
}

class bank extends StatelessWidget {
  const bank({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Ramanan"),
        backgroundColor: Colors.blueAccent,
       leading: Icon(Icons.menu),
       
      ),

      body: Column(
        children: [
         SizedBox(
          height: 40,
          width: 40,
          child: Stack(
            children:[
             Container(
        color:Colors.redAccent,
        height: 40,
        width: 40,
      ),
      Container(
      
        

      )

      
            ]
          ),

         )

    
          
        ],
        
        
        
      ),
        
      );

  

  }
}