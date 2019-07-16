import 'package:flutter/material.dart';
import 'chat_page.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'models/stories_model.dart';

class PeoplePage extends StatefulWidget {
  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 0, length:2);
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    var deviceHeight = deviceSize.height;
    var deviceWidth = deviceSize.width;
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
        title: Text('People', style: TextStyle(color: Colors.black, fontSize: 30.0, fontWeight: FontWeight.w700),),
        actions: <Widget>[
          Container(padding: const EdgeInsets.all(15), child: Icon(Icons.contacts, color: Colors.black,)),
          Container(padding: const EdgeInsets.fromLTRB(12,15,15,15), child: Icon(Icons.person_add, color: Colors.black,)),
        ],
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
            new Tab(text: 'STORIES',),
            new Tab(text: 'ACTIVE'),
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
      bottomNavigationBar: BottomBar(), 
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10,
            children: List.generate(storiesData.length, (index) {
              return Align(
                        child: AspectRatio(
                        aspectRatio: 0.85,
                        child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(storiesData[index].picUrl, fit:BoxFit.cover,),
                      ),
                ),
              );
            }),
        ),
          ),
        new Container(child: Text('todo'),),
        ],
      ),
    );
  }
}
