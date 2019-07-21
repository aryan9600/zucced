import 'package:flutter/material.dart';
import 'package:zucced/models/businesses._model.dart';

class BusinessesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceHeight = deviceSize.height;
    var deviceWidth = deviceSize.width;
    return ListView.builder(
      itemCount: businessData.length,
      itemBuilder: (context, i) => Container(
        child: Column(
          children: <Widget>[
            new ListTile(
              leading: new CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(businessData[i].imageUrl,),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(
                    businessData[i].title,
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
                  Column(
                    children: <Widget>[
                      Container(
                        width: deviceWidth*0.55,
                        padding: const EdgeInsets.only(top: 5),
                        child: new Text(
                          businessData[i].status,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey, fontSize: 10),
                        ),
                      ),
                      Container(
                        width: deviceWidth*0.55,
                        padding: const EdgeInsets.only(top: 5),
                        child: new Text(
                          businessData[i].text,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey, fontSize: 10),
                        ),
                      ),

                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(top:6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green
                    ),
                  )
                ],
              ),
            )
          ],
        )
      )
    );
  }
}