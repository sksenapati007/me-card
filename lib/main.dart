import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 52, 51, 48),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                // backgroundColor: Color.fromARGB(255, 31, 72, 126),
                backgroundImage: AssetImage('images/profile.jpg'),
              ),
              Text(
                'shubhendu',
                style: TextStyle(
                  fontFamily: 'Sacramento',
                  fontSize: 50.0,
                  color: Color.fromARGB(255, 4, 138, 129),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Open Sans Bold',
                    letterSpacing: 2.5,
                    color: Color.fromARGB(255, 4, 138, 129),
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText('Flutter Developer'),
                      TyperAnimatedText('Web Developer'),
                      TyperAnimatedText('Project Manager'),
                      TyperAnimatedText('Volunteer'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                    totalRepeatCount: 10,
                    pause: const Duration(milliseconds: 3500),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  ),
                ),
              ),
              /* Text(
                'Flutter Developer',
                style: TextStyle(
                  fontFamily: 'Open Sans Bold',
                  fontSize: 18.0,
                  letterSpacing: 2.5,
                  color: Color.fromARGB(255, 4, 138, 129),
                  fontWeight: FontWeight.bold,
                ),
              ),*/
              SizedBox(
                height: 20.0,
                width: 140.0,
                child: Divider(
                  color: Color.fromARGB(255, 209, 56, 191),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 20,
                    color: Color.fromARGB(255, 116, 148, 234),
                  ),
                  title: Text(
                    '+91-1235767839',
                    style: TextStyle(
                      fontFamily: 'Open Sans Reg',
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 116, 148, 234),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 20,
                    color: Color.fromARGB(255, 116, 148, 234),
                  ),
                  title: Text(
                    'test@email.com',
                    style: TextStyle(
                      fontFamily: 'Open Sans Reg',
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 116, 148, 234),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
