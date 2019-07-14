import 'package:flutter/material.dart';

class Stories extends StatelessWidget {

  final stories = Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (content, index) => new Stack(
          alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  width: 4,
                  color: Colors.blue[800]
                )
              ),
              child: new Container(
              width: 60,
              height: 60,
              padding:const EdgeInsets.all(5),
              child: ClipOval(
                child: Image.network(
                  'https://www.fcbarcelona.com/photo-resources/fcbarcelona/photo/2019/04/16/b175e025-2b52-4db9-b152-b8b7bbacecc1/mini_2019-04-16-BARCELONA-MANCHESTER-32.JPG?width=1200&height=750',
                  fit: BoxFit.fill  
                )
              ),
            margin: const EdgeInsets.symmetric(horizontal: 10),
        ),
          ),
        index == 0
              ? /*new Stack(
                children: <Widget>[
                  new Container(
                    width: 60,
                    height: 80,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey
                    ),
                  ),
                  new Icon(Icons.add, color: Colors.black)
                ],
              ):*/
              Positioned(
                right: 10.0,
                child: new CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius: 10.0,
                  child: new Icon(
                    Icons.add,
                    size: 14.0,
                    color: Colors.white,
                  ),
                ))
                : new Container()
            ]
          )
        ),
      );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          stories,
        ],
      ),
    );
  }
}