import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_pre/theme/color.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: green));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomeApp(),
    );
  }
}

class MyHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 150.0, 0.0, 0.0),
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 75.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(25.0, 215.0, 0.0, 0.0),
                child: Text(
                  "There",
                  style: TextStyle(
                    fontSize: 75.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(220.0, 191.0, 0.0, 0.0),
                child: Text(
                  ".",
                  style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                      color: green),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 35.0, left: 35.0, right: 35.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              letterSpacing: 4.0,
                              color: medgray),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: green)),
                          border: InputBorder.none),
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: black,
                          letterSpacing: 2.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0,
                              letterSpacing: 4.0,
                              color: medgray),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: green))),
                      textCapitalization: TextCapitalization.sentences,
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: black,
                          letterSpacing: 2.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment(1.0, 0.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Forget Password",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: green,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      height: 70.0,
                      child: Material(
                        color: green,
                        shadowColor: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(40.0),
                        elevation: 5.0,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(40.0),
                          onTap: () {},
                          splashColor: Colors.green[300],
                          child: Center(
                            child: Text(
                              "LOGIN",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 70.0,
                      color: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                                color: black,
                                style: BorderStyle.solid,
                                width: 1.0),
                            borderRadius: BorderRadius.circular(40.0)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: ImageIcon(
                                    AssetImage('images/fac_lo2.png'))),
                            SizedBox(
                              width: 5.0,
                            ),
                            Center(
                                child: Text(
                              "Log in with facebook",
                              style: TextStyle(
                                  color: black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "New to Spotify?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
                                fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  color: green,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
