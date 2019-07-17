import 'package:flutter/material.dart';
import 'models/chat_model.dart';

class ActiveList extends StatefulWidget {
  @override
  _ActiveListState createState() => _ActiveListState();
}

class _ActiveListState extends State<ActiveList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, itemCount) => Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            new ListTile(
              dense: true,
              leading: Stack(
                  alignment: Alignment.bottomRight,
                  children: <Widget>[
                    new CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(dummyData[itemCount].dpUrl),
                    ),
                    Positioned(
                      left: 25,
                      child: CircleAvatar(
                        radius: 6,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            shape: BoxShape.circle,
                            color: Colors.green[600]
                          ),
                        )
                      ),
                    )
                  ],
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    dummyData[itemCount].name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                  new Icon(Icons.pan_tool, color: Colors.black,)
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}