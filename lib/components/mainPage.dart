import 'package:dance_id/account/profile.dart';
import 'package:dance_id/components/activity.dart';
import 'package:dance_id/components/detail_view.dart';
import 'package:dance_id/components/explore_classes.dart';
import 'package:dance_id/components/explore_wellness.dart';
import 'package:dance_id/components/favourite.dart';
import 'package:dance_id/components/navscreen.dart';
import 'package:dance_id/components/search.dart';
import 'package:dance_id/components/virtual_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 98, 0, 1),
      padding: EdgeInsets.only(top: 60),
      child: Scaffold(
          backgroundColor: Colors.grey[200],
        appBar: AppBar(

          backgroundColor: Color.fromRGBO(255, 98, 0, 1),
          // flexibleSpace: Container(
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           begin: Alignment.topCenter,
          //           end: Alignment.bottomCenter,
          //           colors: [
          //             Color.fromRGBO(255, 98, 0, 1),
          //             Color.fromRGBO(255, 181, 113, 1),
          //
          //
          //           ]
          //       )
          //   ),
          // ),

          centerTitle: false,
          title: InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));

              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30,top: 20),
                  child: Container(

                    height: 52.14,
                    width: MediaQuery.of(context).size.width * 0.9,

                      decoration: BoxDecoration(
                        color: Colors.white30,
                        borderRadius: BorderRadius.all(Radius.circular(7))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: const Text('Anything, Current location...'),
                      )),
                ),
              )),

        ),
        body: Column(
          children: [
            Container(

              padding: EdgeInsets.all(10),
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 43.22,
                    child: FlatButton(
                      color: Color.fromRGBO(255, 98, 0, 1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("FITNESS", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Color.fromRGBO(255, 98, 0, 1),
                          width: 2,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(5)),
                      onPressed: (){
                        // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                      },
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 43.22,
                    child: FlatButton(
                      color: Colors.teal[600],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),

                        child: Text("WELLNESS", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600),),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Colors.teal[600],
                          width: 2,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(5)),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) {return ExploreClasses(index: 1,);}));



                      },
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),

                    height: 43.22,
                    child: FlatButton(
                      color: Colors.purple[600],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),

                        child: Text("DANCE", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600,),),
                      ),
                      shape: RoundedRectangleBorder(side: BorderSide(
                          color: Colors.purple[600],
                          width: 2,
                          style: BorderStyle.solid
                      ), borderRadius: BorderRadius.circular(5)),
                      onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context) {return ExploreClasses(index: 2,);}));



                      },
                    ),
                  ),
                ],),
            ),
            Flexible(child: ListView(
              children: [
                SizedBox(height: 10,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Favourite", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                )),
                SizedBox(height: 10,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10,),
                  padding: EdgeInsets.all(8),

                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Start finding your favourite businesses today", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          Icon(Icons.favorite, color: Colors.red,),
                        ],
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("EXPLORE", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Deals to get Started", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Find great introductory offer from the best locations in ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                )),
                Center(child: Text("fitness, wellness and dance", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 136.59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: Text("Intro Offer", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),)),
                      SizedBox(height: 20,),
                      SizedBox(

                        height: 36.46,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("EXPLORE", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                          },
                        ),
                      ),



                    ],

                  ),
                ),
                SizedBox(height: 20,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sweat from home!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Stay in safe and support your favourite studios", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                )),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 136.59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: Text("Virtual Classes", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),)),
                      SizedBox(height: 20,),
                      SizedBox(

                        height: 36.46,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("EXPLORE", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.push(context,MaterialPageRoute(builder: (context) => VirtualClass()));

                          },
                        ),
                      ),



                    ],

                  ),
                ),
                SizedBox(height: 20,),

                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Workouts, Your Way", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                )),
                Center(child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("With the new combined list, find classes that fit your", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                )),
                Center(child: Text("life.", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)),
                SizedBox(height: 20,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 136.59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child: Text("Discover Classes", style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700),)),
                      SizedBox(height: 20,),
                      SizedBox(

                        height: 36.46,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text("EXPLORE", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.white,
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));

                          },
                        ),
                      ),



                    ],

                  ),
                ),
                SizedBox(height: 20,),
                Center(child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Explore Categorie", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 143.0,


                child: new ListView(
                  children: [
                    Card(child: new Container(width: 124.0, color: Colors.grey,
                      child: new Text('Yoga',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                    Card(child: new Container(width: 124.0,color: Colors.grey,
                      child: new Text('Meditation',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                    Card(child: new Container(width: 124.0,color: Colors.grey,
                      child: new Text('Pilates',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                    Card(child: new Container(width: 124.0,color: Colors.grey,
                      child: new Text('Barre',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),
                    Card(child: new Container(width: 124.0,color: Colors.grey,
                      child: new Text('Strength',style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),alignment: Alignment.center,)),

                  ],
                  scrollDirection: Axis.horizontal,
                ),
              ),
                SizedBox(height: 20,),

              ],
            ))
          ],
        ),
      ),
    );
  }




}






