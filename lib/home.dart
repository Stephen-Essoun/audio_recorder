import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:play_recorder_f4rg0/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.all(50),
            child:
                ListView(padding: const EdgeInsets.all(8), children: <Widget>[
              Column(children: [
                const SizedBox(
                  height: 50,
                ),
                const Image(
                  fit: BoxFit.contain,
                  image: AssetImage("assets/images/TM.png"),
                  width: 300,
                  // height: 300,
                ),
                const SizedBox(
                  height: 50,
                ),

                const SizedBox(
                  height: 50,
                ),

                //apartado de que necesito
                ElevatedButton(
                  style: Styles.button_style,
                  onPressed: () {
                    Navigator.of(context).pushNamed('rp');
                  },
                  child: Lottie.asset('assets/json/blueplay.json', width: 250),
                ),

                Lottie.asset('assets/json/practicaAudio.json'),
              ])
            ])));

// apartado de como me siento
  }
}
