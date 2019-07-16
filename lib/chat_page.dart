import 'package:flutter/material.dart';
import 'chat_body.dart';

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
        backgroundColor: Colors.transparent,
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
        title: Text('Chats', style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w700),),
     ),
     body: Container(
         padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
         child: Column(
           children: <Widget>[
              //new SearchBar(searchController: _searchController),
              SizedBox(height: 10),
              Expanded(child:ChatBody())
           ],
         ),
     ),
     bottomNavigationBar: new BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: GestureDetector(
            child: Icon(Icons.chat_bubble, color: Colors.black,),
            onTap: (){Navigator.pushNamed(context, '/chat');},
          ),
          title: new Container(height: 0,)
        ),
        BottomNavigationBarItem(
          icon: GestureDetector(child: Icon(Icons.people, color: Colors.black,), 
           onTap:() {Navigator.pushNamed(context, '/people');}
           ),
           title: new Container(height: 0,),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi_tethering, color: Colors.black,),
          title: new Container(height: 0,)
        )
      ],
      elevation: 20,
      iconSize: 30,
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    @required TextEditingController searchController,
  }) : _searchController = searchController, super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: TextField(
      decoration: new InputDecoration(
        prefixIcon: Icon(Icons.search),
        contentPadding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
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
    );
  }
}