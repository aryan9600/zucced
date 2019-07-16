import 'package:flutter/material.dart';
import 'chat_list.dart';


class ChatBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
      Flexible(
        child: ChatList(),
      )
      ],
    );
  }
}