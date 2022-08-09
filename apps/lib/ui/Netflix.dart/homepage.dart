import 'package:flutter/material.dart';

import 'Nui2.dart';


void main(){
  runApp(MaterialApp(home: netflixhome(),));
}
class netflixhome extends StatefulWidget {


  netflixhome({Key? key}) : super(key: key);


  @override
  State<netflixhome> createState() => _netflixhomeState();
}

class _netflixhomeState extends State<netflixhome> {
 int _currentindex=0;
 final List<Widget>page=[
   homepage(),
   Text("page2"),
   Text("page3"),
   Text("page4"),
   Text("page5"),


 ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      extendBodyBehindAppBar: true
      ,
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: Image(image: NetworkImage("data:image/png;base64,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"),height: 35,width: 35,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("TV Shows"),
            Text("Movies"),
            Text("My List"),
          ],
        ),
        
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [

                  IndexedStack(
                    children: [
                      page.elementAt(_currentindex)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),




      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: Colors.orange,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.add_to_queue),label: "Coming Soon",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.download),label: "Downloads",backgroundColor: Colors.black,tooltip: ""),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: "More",backgroundColor: Colors.black,tooltip: ""),
        ],

        unselectedItemColor: Colors.white54,
        showUnselectedLabels: true,
        onTap: _ontap,
        currentIndex: _currentindex,
      ),

    );
  }
 _ontap(int index) {
   setState((){
     _currentindex=index;
   });


 }
}