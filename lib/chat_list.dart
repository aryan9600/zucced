import 'package:flutter/material.dart';
import 'package:zucced/chat_page.dart';
import 'stories.dart';
import 'package:zucced/models/chat_model.dart';

class ChatList extends StatefulWidget {
  @override
  _ChatListState createState() => _ChatListState();
}

TextEditingController _searchController = TextEditingController();
class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceHeight = deviceSize.height;
    var deviceWidth = deviceSize.width;
    return ListView.builder(
      itemCount: dummyData.length+2,
      itemBuilder: (context, itemCount) => Container(
            child: Column(
              children: <Widget>[
                Builder(
                  builder: (context){
                    if(itemCount == 0){
                      return new SearchBar(searchController: _searchController,);
                    }
                    else if(itemCount == 1){
                      return new Column(
                        children: <Widget>[
                          SizedBox(
                          child: new Stories(),
                          height: deviceHeight * 0.09
                          ),
                          SizedBox(
                            height: deviceHeight*0.015,
                          )
                        ],
                      );
                    }
                    else{
                        return Column(
                          children: <Widget>[
                            new ListTile(
                              leading: new CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(dummyData[itemCount-2].dpUrl,),
                              ),
                              title: new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  new Text(
                                    dummyData[itemCount-2].name,
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
                                      dummyData[itemCount-2].message,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey, fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    child: new Text(
                                      dummyData[itemCount-2].time,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey, fontSize: 15),
                                    )
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                    }
                  },
                )
              ],
            )
        ),
    );
  }
}