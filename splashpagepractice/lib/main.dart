import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.orange,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Image.asset('assets/applogos.png', width: 200,),
                  Padding(padding: EdgeInsets.all(40),
                    child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(
                    Colors.white,
                  ),),)
                  // LinearProgressIndicator(),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
