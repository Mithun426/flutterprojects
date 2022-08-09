// ignore_for_file: camel_case_types

import 'package:apps/ui/youtubeui.dart/videoplayer.dart';
import 'package:apps/ui/youtubeui.dart/yt_videodetails.dart';
import 'package:flutter/material.dart';



class videolist extends StatelessWidget {
final List<Videodata>vdata;

  // ignore: use_key_in_widget_constructors
  const videolist({ required this.vdata});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>videoplayer(videodata:vdata[index],)));
            //print("ontaped${[index]}");
          },
          child: Column(
            children: [
              Stack(alignment: AlignmentDirectional.bottomEnd, children: [
                Image(
                  image: NetworkImage(
                      vdata[index].thumbnail),
                  fit: BoxFit.cover,
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 20,
                        width: 35,
                        color: Colors.black,
                        child: Center(
                            child: Text(
                              vdata[index].duration,
                          style: const TextStyle(fontSize: 12),
                        )),
                      ),
                    )
                  ],
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      vdata[index].propic),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ignore: sized_box_for_whitespace
                              Container(
                                width: MediaQuery.of(context).size.width*.8,
                                child: Text(
                                 vdata[index].title,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w300, color: Colors.white,fontSize: 19),maxLines: 2,overflow:TextOverflow.ellipsis ,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(vdata[index].username,style: const TextStyle(fontSize: 14,color: Colors.white70),),
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: SizedBox(width: 5,child: Text("-"),),
                                  ),
                                  Text("${(vdata[index].views)} views",style: const TextStyle(fontSize: 14,color: Colors.white70),),
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: SizedBox(width: 5,child: const Text("-"),),
                                  ),
                                  Text(vdata[index].date,style: const TextStyle(fontSize: 14,color: Colors.white70),),

                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const Icon(Icons.more_vert)
                  ],
                ),
              )
            ],
          ),
        );
      }, childCount:vdata.length,
      ),

    );
  }
}