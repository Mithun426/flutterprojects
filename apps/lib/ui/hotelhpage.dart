import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:sliver_tools/sliver_tools.dart';


void main(){
  runApp(MaterialApp(
   home: Hotel()
  )
  );
}
class   Hotel extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Icon(Icons.menu)
            ],
             
              leading: Icon(Icons.favorite),  
              backgroundColor: Colors.blue,  
              expandedHeight: 140.0,  
              floating: true,  
              pinned: true  ,
              flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: Text("type your location",),
              

              ),
              bottom: AppBar(
                title: Container(
                  
                  width: 20,
                  height: 30,
                  color: Colors.white,
                  
                  child: TextField(
                    
                  decoration: InputDecoration(
                    
                    hintText: "kakkanad",
                    prefixIcon:Icon(Icons.search) ,
                    

                  ),
                  

                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ),
          SliverGrid(
            delegate: delegate, gridDelegate: gridDelegate)


        ],  
        
    
)
          
        
      );
    
  }
}