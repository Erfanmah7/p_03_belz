import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
    MyApp({Key? key}) : super(key: key);
   AudioPlayer player = AudioPlayer();
  late Size size;
   @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              containers(Colors.red, 1),
              containers(Colors.orange, 2),
              containers(Colors.yellow, 3),
              containers(Colors.green, 4),
              containers(Colors.blue, 5),
              containers(Colors.blueGrey, 6),
              containers(Colors.black, 7),
            ],
          ),
        ),
      ),
    );
  }
  Widget containers(Color color,int num){
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: color,
      child: InkWell(
       borderRadius: BorderRadius.circular(20),
        onTap: (){
          player.setAsset('assets/belz-audios/audio$num.wav');
          player.play();
        },
        child: Container(
         // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          height: size.height - size.height * 0.10 * num,
          width: size.width * 0.13,
        ),
      ),
    );
  }
}
