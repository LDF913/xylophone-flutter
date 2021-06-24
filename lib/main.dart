import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {


  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play(
        'note$soundnumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              FlatButton(

                color: Colors.red,
                onPressed: () {
                playsound(1);
                },
                child: Text('click Me'),
              ),
              FlatButton(
                color: Colors.orangeAccent,
                onPressed: () { playsound(2);
                },
                child: Text('click Me'),
              ),
              FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  playsound(3);

                },
                child: Text('click Me'),
              ),
              FlatButton(
                color: Colors.green,
                onPressed: () {
                  playsound(4);

                },
                child: Text('click Me'),
              ),
              FlatButton(
                color: Colors.lightGreen,
                onPressed: () { playsound(5);
                },
                child: Text('click Me'),
              ),
              FlatButton(
                color: Colors.blue,
                onPressed: () {
                  playsound(6);
                },
                child: Text('click Me'),
              ),
              FlatButton(
                color: Colors.purple,
                onPressed: () { playsound(7);
                },
                child: Text('click Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
