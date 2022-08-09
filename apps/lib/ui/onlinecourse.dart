import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: onlineclass(),
  ));
}
    class onlineclass extends StatefulWidget {
  const onlineclass({Key? key}) : super(key: key);

  @override
  State<onlineclass> createState() => _onlineclassState();
}

class _onlineclassState extends State<onlineclass> {
  @override
  Widget build(BuildContext context) => Scaffold(
      
    bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.black,
      currentIndex: 0,
      backgroundColor: Colors.green,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: ''
          
          ),
           BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: ''
           ),
         BottomNavigationBarItem(
          icon: Icon(Icons.person_add_alt_1_sharp),
          label: ''
         )
      ],
    ),

    appBar: AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: Text("Sign up"),
    actions: [
      IconButton( 
        icon: Icon(Icons.menu),
        onPressed: (){},
        )
    ],
    ),

    

    body: Column(
      
      children: [
        Padding(padding:EdgeInsets.all(3.0)
        
        ),
        
        
      SafeArea(
        
        child: 
      
      
      Card(
        
          
           
              
            child: ListTile(
                title: Text("i'm looking for teacher",textAlign: TextAlign.center,),
                tileColor: Colors.greenAccent,
                textColor: Colors.black38,
                shape:  RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(
       50.0, // Change your border radius here
                  ),
                ),
              
                  onTap: (){},
              ),
            ),
              
        ),

      SafeArea(child:
      ListTile(
        title: Text("i'm teacher",textAlign: TextAlign.center,),
                tileColor: Colors.greenAccent,
                textColor: Colors.black38,
                shape:  RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(
       50.0, // Change your border radius here
                  ),
                ),
            )
      
      
      ),
        
       ],
    ),
     );
   }
 