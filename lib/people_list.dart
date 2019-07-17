import 'package:flutter/material.dart';
import 'models/stories_model.dart';
 
 class PeopleList extends StatefulWidget {
   @override
   _PeopleListState createState() => _PeopleListState();
 }
 
 class _PeopleListState extends State<PeopleList> with SingleTickerProviderStateMixin{

   @override
   Widget build(BuildContext context) {
     return new Container(
      padding: const EdgeInsets.fromLTRB(0,8,0,8),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 1
          ),
        itemCount: storiesData.length+1,
        itemBuilder: (context, itemCount) => Container(
          padding: const EdgeInsets.fromLTRB(25, 10,0, 0),
          child: itemCount == 0 ?
            new Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: AspectRatio(
                      aspectRatio: 0.85,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/user_dp.jpg', fit:BoxFit.cover,),
                        ),
                      ),
                   ),
                   Positioned(
                     left: 10,
                     bottom: 10,
                     child: Column(
                       //mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Icon(Icons.add, color: Colors.white, size: 36),
                         SizedBox(height: 120),
                         Text('Add to story', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),),
                       ],
                     )
                   )
                  ]
                )
                :
             new Stack(
                  children: <Widget>[
                    Align(
                      widthFactor: 1.2,
                      alignment: Alignment.bottomLeft,
                      child: AspectRatio(
                      aspectRatio: 0.85,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(storiesData[itemCount-1].picUrl, fit:BoxFit.cover,),
                        ),
                      ),
                   ),
                   Positioned(
                     bottom: 10,
                     left:10,
                     child: Text(storiesData[itemCount-1].name, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),)
                   )
                  ]
                ),
        )

      ),
    );
   }
 }

/*return Builder(
          builder: (context){
            if(index==0){ 
              return Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: AspectRatio(
                    aspectRatio: 0.85,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/user_dp.jpg', fit:BoxFit.cover,),
                      ),
                    ),
                 ),
                 Positioned(
                   right: 10,
                   child: Text('Add to story', style: TextStyle(color: Colors.black, fontSize: 20),)
                 )
                ]
              );
            }
            else{
              return Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: AspectRatio(
                    aspectRatio: 0.85,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(storiesData[index-1].picUrl, fit:BoxFit.cover,),
                      ),
                    ),
                 ),
                 Positioned(
                   right:10,
                   child: Text(storiesData[index-1].name, style: TextStyle(color: Colors.black),)
                 )
                ]
              );
            }
          }
        );
*/