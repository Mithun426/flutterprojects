import 'package:flutter/material.dart';

class BottomB extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(selectedItemColor: Colors.white54,
     unselectedItemColor: Colors.white54,
     showUnselectedLabels: true,
     currentIndex: 1,
     landscapeLayout:BottomNavigationBarLandscapeLayout.spread ,
     items: [
       BottomNavigationBarItem(
         icon: Icon(Icons.home,color: Colors.white54,),
         label: "HOME",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.explore_outlined,color: Colors.white54,),
         label: "Expolre",
       ),
       BottomNavigationBarItem(
           icon: Icon(Icons.add_circle_outline,color: Colors.white54,),
           label: "Add"),
       BottomNavigationBarItem(
         icon: Icon(Icons.subscriptions_outlined,color: Colors.white54,),
         label: "Subscription",
       ),
       BottomNavigationBarItem(
         icon: Icon(Icons.video_collection_outlined,color: Colors.white54,),
         label: "Library",
       ),

     ],);
  }
  
}
class Appbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Container(
        height: 20,
        width:  90,
        child: Image(image: NetworkImage("data:image/png;base64,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"),fit: BoxFit.contain,),

      ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.cast),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            iconSize: 40,
            onPressed: () => {},
            icon: CircleAvatar(
              foregroundImage: NetworkImage('https://images.unsplash.com/photo-1601233749202-95d04d5b3c00?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=838&q=80'),
            ),
          ),
        ],
    );
  }

}