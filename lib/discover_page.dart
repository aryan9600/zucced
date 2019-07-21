import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:zucced/businesses_list.dart';

import 'chat_page.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> with SingleTickerProviderStateMixin {
  
  TabController _tabController;
  
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length:2);
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            child: ClipOval(
              child: Image.asset('assets/images/user_dp.jpg', fit: BoxFit.scaleDown,),
            )
          ),
        ),
        title: Text('Discover', style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w700),),
        bottom: AppBar(
          title: SearchBar(searchController: _searchController,),
          bottom: new TabBar(
            //indicatorPadding: const EdgeInsets.all(20),
            indicatorSize: TabBarIndicatorSize.label,
            controller: _tabController,
            indicatorColor: Colors.white,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            tabs: <Widget>[
              new Tab(text: 'BUISNESSES',),
              new Tab(text: 'GAMES'),
            ],
            indicator: new BubbleTabIndicator(
              padding: const EdgeInsets.fromLTRB(60,0,60,0),
              //insets: EdgeInsets.all(10),
              indicatorColor: Colors.grey[300],
              indicatorHeight: 25.0,
              tabBarIndicatorSize: TabBarIndicatorSize.label,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(), 
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          BusinessesList(),
          Container()
        ],
      ),
    );
 }
}