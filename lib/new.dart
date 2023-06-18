import 'package:flutter/material.dart';
import 'package:play_recorder_f4rg0/styles.dart';

class Welcom3 extends StatelessWidget {
  const Welcom3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //celular
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: Styles.button_style,
                  onPressed: () {
                    //Navigator.of(context).pushNamed('Pantoy');
                  },
                  child: const Image(
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/cellpng.png")),
                ),
              ),
            ],
          ),
        ));
  }
}
