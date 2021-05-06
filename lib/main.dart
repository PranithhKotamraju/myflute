import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyFlute());

class MyFlute extends StatefulWidget {
  @override
  _MyFluteState createState() => _MyFluteState();
}

class _MyFluteState extends State<MyFlute> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyFlute"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myFlute(color: Colors.cyan,soundnum: 1,text: "flute1"),
            myFlute(color: Colors.tealAccent,soundnum: 2,text: 'flute2'),
          ],
        ),
      ),
    );
  }

  void play(int soundnum) {
    final audioplayer = AudioCache();
    audioplayer.play('flute$soundnum.wav');
  }

  Widget myFlute({Color color, int soundnum, String text}) {
   return  Expanded(
     child: FlatButton(
      child: Center(child: Text(text)),

       onPressed: () {
         play(soundnum);
       },
       color: color,



     ),
   );
  }
}
