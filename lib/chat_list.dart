import 'package:flutter/material.dart';
import 'stories.dart';
import 'package:zucced/models/chat_model.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceHeight = deviceSize.height;
    var deviceWidth = deviceSize.width;
    return ListView.builder(
      itemCount: dummyData.length+1,
      itemBuilder: (context, itemCount) => Container(
            child: Column(
              children: <Widget>[
                itemCount == 0
                  ? new Column(children: <Widget>[
                    SizedBox(
                    child: new Stories(),
                    height: deviceHeight * 0.09
                    ),
                    SizedBox(
                      height: deviceHeight*0.015,
                    )
                  ],
                )
                  :
                Column(
                  children: <Widget>[
                    //Divider(height: 4),
                    new ListTile(
                      leading: new CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(dummyData[itemCount-1].dpUrl,),
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            dummyData[itemCount-1].name,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold
                            )
                          ),
                        ],
                      ),
                      subtitle: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: deviceWidth*0.55,
                            padding: const EdgeInsets.only(top: 5),
                            child: new Text(
                              dummyData[itemCount-1].message,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey, fontSize: 18),
                            ),
                          ),
                          Container(
                            child: new Text(
                              dummyData[itemCount-1].time,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey, fontSize: 15),
                            )
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            )
        ),
    );
  }
}