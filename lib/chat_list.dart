import 'package:flutter/material.dart';
import 'stories.dart';

class ChatList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceHeight = deviceSize.height;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
        ? new SizedBox(
          child: new Stories(),
          height: deviceHeight * 0.08
        )
        :
        Container(
          //child: Text('wassup n', style: TextStyle(fontSize: 20),)
        )
    );
  }
}