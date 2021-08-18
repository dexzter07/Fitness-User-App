import 'package:dance_id/components/explore_classes.dart';
import 'package:dance_id/components/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ExploreWellness extends StatefulWidget {
  @override
  _ExploreWellnessState createState() => _ExploreWellnessState();
}

class _ExploreWellnessState extends State<ExploreWellness> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Color.fromRGBO(255, 98, 0, 1),
        padding: EdgeInsets.only(top: 60),
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color.fromRGBO(255, 98, 0, 1),
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.label ,
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text('FITNESS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                Tab(child: Text('WELLNESS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),
                Tab(child: Text('DANCE', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),)),

              ],
            ),
            centerTitle: false,
            title: InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));

                },
                child: Center(
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
                )),
          ),
          body: TabBarView(
            children: [
              //FITNESS
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      SizedBox(

                        height: 43.22,
                        child: FlatButton(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),

                            child: Text("CLASSES", style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),),
                          ),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.grey[400],
                              width: 2,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(5)),
                          onPressed: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ExploreClasses()));


                          },
                        ),
                      ),

                      SizedBox(

                        height: 43.22,
                        child: FlatButton(
                          color: Color.fromRGBO(255, 98, 0, 1),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Text("BUSINESSES", style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w600,),),
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
                    ],),
                  ),
                  Flexible(child: ListView(
                    children: [
                      Container(
                        height: 133.0,
                        child: Carousel(
                          autoplay: false,
                          images: [
                            InkWell(
                                onTap: (){


                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           Text("Train Your Brain (mthly)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                                           Expanded(child: SizedBox(height: 20,)),
                                           Text("Nourish the Brain Institute", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)

                                         ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(150)),
                                                color: Color.fromRGBO(255, 98, 0, 1),
                                              ),
                                              child: Center(child: Text("₹ 49.97",style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w500 ),)),
                                            ),
                                            Text("INTRO", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                                            Text("OFFER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            InkWell(
                                onTap: (){


                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Train Your Brain (mthly)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                                            Expanded(child: SizedBox(height: 20,)),
                                            Text("Nourish the Brain Institute", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(150)),
                                                color: Color.fromRGBO(255, 98, 0, 1),
                                              ),
                                              child: Center(child: Text("₹ 49.97",style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w500 ),)),
                                            ),
                                            Text("INTRO", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                                            Text("OFFER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                            InkWell(
                                onTap: (){


                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Train Your Brain (mthly)", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
                                            Expanded(child: SizedBox(height: 20,)),
                                            Text("Nourish the Brain Institute", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)

                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(Radius.circular(150)),
                                                color: Color.fromRGBO(255, 98, 0, 1),
                                              ),
                                              child: Center(child: Text("₹ 49.97",style: TextStyle(color: Colors.white,fontSize: 12, fontWeight: FontWeight.w500 ),)),
                                            ),
                                            Text("INTRO", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                                            Text("OFFER", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),

                          ],
                          dotSize: 8.0,
                          dotColor: Colors.black,
                          dotBgColor: Colors.transparent,
                          indicatorBgPadding: 8.0,
                        ),
                      ),

                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            child: Text("SEE ALL", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),),
                          )),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 412.38,
                          height: 113.89,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(150)),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 412.38,
                          height: 113.89,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(150)),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 412.38,
                          height: 113.89,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(150)),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 412.38,
                          height: 113.89,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(150)),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 412.38,
                          height: 113.89,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(150)),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          width: 412.38,
                          height: 113.89,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Nourish the brain Institute", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
                                  Text("Downtown", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.grey),),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Icon(Icons.star,color: Colors.deepOrangeAccent,),
                                      Text("    5 reviews", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.grey),),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(150)),
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )

                    ],
                  ))

                ],
              ),
              //WELLNESS
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("MASSAGE",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))
                          )
                        ],
                      ),
                    ),

                  ),

                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("ACUPUNCTURE",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                            child: Text("MEDITATION",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("NUTRITION",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("CHIROPRACTOR",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                            child: Center(child: Text("NATUROPATHIC MEDICINE",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("PRENATAL",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("PHYSICAL THERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("COACHING/HEALING",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("CYROTHERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("HEATED THERAPY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                  Container(
                    width: 153.26,
                    height: 178.67,
                    color: Colors.white,
                    child: Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 76.38,
                            height: 76.38,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(150)),
                              color: Colors.grey,
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Text("REFLEXOLOGY",style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                    ),

                  ),
                ],
              ),
              //BEAUTY
              ListView(
                children: [

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

