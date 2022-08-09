import 'package:apps/ui/youtubeui.dart/bottom_navi.dart';
import 'package:apps/ui/youtubeui.dart/maimpage_videos.dart';
import 'package:apps/ui/youtubeui.dart/yt_videodetails.dart';
import 'package:flutter/material.dart';


void main(){
runApp(MaterialApp(darkTheme: ThemeData.dark(),
  debugShowCheckedModeBanner:false,
    home: Youtubehome(),));
}

class Youtubehome extends StatelessWidget  {



  @override
  Widget build(BuildContext context) {
   return Scaffold(
     bottomNavigationBar: BottomB(),
     body: CustomScrollView(
       shrinkWrap: true,
       slivers: [
         Appbar(),
         videolist(vdata: vdata,),
         

         


       ],
     ),
   );
  }
}