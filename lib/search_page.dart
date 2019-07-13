import 'package:flutter/material.dart';

class SearchListExample extends StatefulWidget {
  @override
  _SearchListExampleState createState() => new _SearchListExampleState();
}
class _SearchListExampleState extends State<SearchListExample> {
  Widget appBarTitle;
  final globalKey = new GlobalKey<ScaffoldState>();
  final TextEditingController _controller = new TextEditingController();
  List<dynamic> _list;
  bool _isSearching;
  String _searchText = "";
  List searchresult = new List();

  _SearchListExampleState() {
    _controller.addListener(() {
      if (_controller.text.isEmpty) {
        setState(() {
          _isSearching = false;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearching = true;
          _searchText = _controller.text;
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    values();
    appBarTitle = new TextField(
      controller: _controller,
      autofocus: true,
      //cursorColor: Colors.black,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration.collapsed(
        hintText: 'Search',
        //fillColor: Colors.white
      ),
      onChanged: searchOperation
    );
    _handleSearchStart();
  }

  void values() {
    _list = List();
    _list.add("Super cheap dress");
    _list.add("10 rupiya tshirt");
    _list.add("5 paisa chappal");
    _list.add("\$100000000 iphone");
    _list.add("tv smart (firestick only lol)");
    _list.add("baagri market gucci");
    _list.add("ramdev baba stuff");
    _list.add("gaumutra");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        key: globalKey,
        appBar: buildAppBar(context),
        body: new Container(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Flexible(
                  child: searchresult.length != 0 || _controller.text.isNotEmpty
                      ? new ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchresult.length,
                          itemBuilder: (BuildContext context, int index) {
                            String listData = searchresult[index];
                            return new ListTile(
                              title: new Text(listData.toString()),
                            );
                          },
                        )
                      : new ListView.builder(
                          shrinkWrap: true,
                          itemCount: _list.length,
                          itemBuilder: (BuildContext context, int index) {
                            String listData = _list[index];
                            return new ListTile(
                              title: new Text(listData.toString()),
                            );
                          },
                        ))
            ],
          ),
        ));
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(centerTitle: true, title: appBarTitle,brightness: Brightness.dark, iconTheme: IconThemeData(color: Colors.black), backgroundColor: Colors.white
      /*new IconButton(
        icon: icon,
        onPressed: () {
          setState(() {
            if (this.icon.icon == Icons.search) {
              this.icon = new Icon(
                Icons.close,
                color: Colors.black,
              );
              this.appBarTitle = new TextField(
                controller: _controller,
                style: new TextStyle(
                  color: Colors.black,
                ),
                decoration: new InputDecoration(
                    prefixIcon: new Icon(Icons.search, color: Colors.black),
                    hintText: "Search...",
                    hintStyle: new TextStyle(color: Colors.black)),
                onChanged: searchOperation,
              );
              _handleSearchStart();
            } else {
              _handleSearchEnd();
            }
          });
        },
      ),*/
    );
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  /*void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color: Colors.black,
      );
      this.appBarTitle = new Text(
        "Search Sample",
        style: new TextStyle(color: Colors.black),
      );
      _isSearching = false;
      _controller.clear();
    });
  }*/

  void searchOperation(String searchText) {
    searchresult.clear();
    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(data);
        }
      }
    }
  }
}