import 'package:alln_in_one_streaming_website/screens/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? F, T;

  @override
  Widget build(BuildContext context) {
    F = Provider.of<HomeProvider>(context, listen: false);
    T = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Selest a Website",
            style: GoogleFonts.oswald(fontSize: 20, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageSlideshow(
                height: 270,
                width: double.infinity,
                indicatorColor: Colors.white,
                isLoop: true,
                autoPlayInterval: 3000,
                indicatorBackgroundColor: Colors.white60,
                initialPage: T!.i,
                onPageChanged: (value) {
                  F!.changeimage(value);
                },
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/bhediya.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text("${F!.showname[0]}"),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            colors: [
                              Colors.white54,
                              Colors.white54,
                            ],
                          )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/farzi.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Text("${F!.showname[1]}"),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white54,
                                  Colors.white54,
                                ],
                              )),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/mirzapur.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.center,

                          child: Text("${F!.showname[2]}"),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white54,
                                  Colors.white54,
                                ],
                              )),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/moneyhiest.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.center,

                          child: Text("${F!.showname[3]}"),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white54,
                                  Colors.white54,
                                ],
                              )),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/oaathan.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.center,

                          child: Text("${F!.showname[4]}"),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white54,
                                  Colors.white54,
                                ],
                              )),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/pushpa.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          child: Text("${F!.showname[5]}"),
                          alignment: Alignment.center,

                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white54,
                                  Colors.white54,
                                ],
                              )),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 220,
                          width: double.infinity,
                          child: Image.asset(
                            "assets/movies/squidgames.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: double.infinity,
                          alignment: Alignment.center,

                          child: Text("${F!.showname[6]}"),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white54,
                                  Colors.white54,
                                ],
                              )),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 470,
                child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      //color: Colors.red,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                           // color: Colors.yellow,
                            child: Image.asset("${F!.appLogo[index]}",fit: BoxFit.fill,),
                          ),
                          SizedBox(width: 10,),
                          Text("${F!.appName[index]}",style: TextStyle(color: Colors.white,fontSize: 20),),
                          Expanded(child: SizedBox()),
                          InkWell(
                             onTap: () {
                               Navigator.pushNamed(context,'web');
                               F!.urlLauder(index);
                             },
                            child: Container(
                              height: 100,
                              width: 84,
                              //color: Colors.yellow,
                              alignment: Alignment.center,
                              child: Icon(Icons.chevron_right,color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
