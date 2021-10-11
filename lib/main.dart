// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black38,
        child: Center(
          child: Form(
            key: formKey,
            child: Container(
              width: 300,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Container(
                      width: 300,
                      child: Material(
                        elevation: 5.0,
                        color: Colors.white,
                        child: TextFormField(
                          validator: (String? value1) {
                            if (value1 != 'jaseel') {
                              return 'Wrong user name';
                            }
                          },
                          decoration: InputDecoration(
                              hintText: 'Username', border: InputBorder.none),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Material(
                      elevation: 5.0,
                      color: Colors.white,
                      child: TextFormField(
                        validator: (String? value2) {
                          if (value2 != "123456") {
                            return 'You Entered Wrong Password';
                          }
                        },
                        decoration: InputDecoration(
                            hintText: 'Password', border: InputBorder.none),
                        style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text('Log in'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
