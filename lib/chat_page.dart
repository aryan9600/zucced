import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController _searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            child: Container(
            padding: const EdgeInsets.all(8),
            child: ClipOval(
              child: Image.asset('assets/images/user_dp.jpg', fit: BoxFit.scaleDown,),
            ),
          ),
            onTap: (){print('yo');},
        ),
        actions: <Widget>[
          Container(padding: const EdgeInsets.all(15), child: Icon(Icons.add_a_photo, color: Colors.black,)),
          Container(padding: const EdgeInsets.fromLTRB(12,15,15,15), child: Icon(Icons.message, color: Colors.black,)),
        ],
        title: Text('Chats', style: TextStyle(color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w600),),
     ),
     body: SafeArea(
       child: Container(
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
                controller: _searchController,
                onTap: (){Navigator.pushNamed(context, '/search');},
                ),
              ),
           ],
         ),
       ),
     ),
    );
  }
}