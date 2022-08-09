import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(
          image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdx3drYzTLX7RB-yaNnj_QLv18bOj6XRp47g&usqp=CAU"),
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.black,

          Colors.black12
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter,
            stops: [
              0.1,
              1,

            ])),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image(image: NetworkImage("data:image/png;base64,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"),height: 100,width: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.add,color: Colors.white),
                    Text("List",style: TextStyle(color: Colors.white)),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(3),
                  child: Container(
                    height: 30,
                    width: 80,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.play_arrow),
                        Text("Play",style: TextStyle(fontWeight: FontWeight.w800))
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.info_outline,color: Colors.white,),
                    Text("Info",style: TextStyle(color: Colors.white),),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      )
    ]);
  }
}