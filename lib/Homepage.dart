// ignore_for_file: file_names
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return //WillPopScope(
        //   onWillPop: () => Future.value(false),
        Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Home page',
          style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 40)),
        )),
        backgroundColor: Colors.black38,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child: Icon(Icons.logout_rounded)),
          ),
        ],
      ),

      body: Column(
        children: [
          Row(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
              ),
              SizedBox(
                width: 20,
              ),
              Text('Products',
                  style: GoogleFonts.notoSans(
                    textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  )),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 2, blurRadius: 10)
                ],
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Text(
                      "Footware",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    width: 200,
                                    child: Image.asset(
                                      'assets/images/white sneaker.jpg',
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 0),
                                child: Text(
                                  ' White Sneaker For Men',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                color: Colors.white,
                                width: 200,
                                height: 50,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        width: 200,
                                        child: Image.asset(
                                          'assets/images/Red sneaker.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        child: Text(
                                          ' Red Sneaker For Men',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                        width: 200,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        width: 200,
                                        child: Image.asset(
                                          'assets/images/sports shoue.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        child: Text(
                                          ' Sport Shoue For Men',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                        width: 200,
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Fashion",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.white,
                                    width: 200,
                                    height: 250,
                                    child: Image.asset(
                                      'assets/images/suit.jpg',
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 0),
                                child: Text(
                                  ' Suit For Men',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                color: Colors.white,
                                width: 200,
                                height: 50,
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        width: 200,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/images/tshirtblue.jpeg',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        child: Text(
                                          ' Blue t-shirt For Men',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                        width: 200,
                                        height: 50,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        color: Colors.white,
                                        width: 200,
                                        height: 250,
                                        child: Image.asset(
                                          'assets/images/tshirt.jpg',
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 0),
                                        child: Text(
                                          ' White T-shirt for Men',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        color: Colors.white,
                                        width: 200,
                                        height: 50,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/1870274.jpg"))),
              ),
            ),
            ListTile(
              title: Text('Footware'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Fashion'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
