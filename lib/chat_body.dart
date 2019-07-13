import 'package:flutter/material.dart';
import 'chat_list.dart';
//import 'chat_page.dart';

class ChatBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        /*Container(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
          child: Row(
            children: <Widget>[
                Flexible(
                  child: TextField(
                  decoration: new InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0)
                      ),
                      borderSide: BorderSide(width: 0, style: BorderStyle.none)
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[600]),
                    hintText: "Search",
                    fillColor: Colors.grey[200],
                  ),
                  //controller: _searchController,
                  onTap: (){Navigator.pushNamed(context, '/search');},
                  ),
                ),
                SizedBox(height: 10),
                ChatBody()
            ],
          ),
        ),*/
      Flexible(
        child: ChatList(),
      )
      ],
    );
  }
}