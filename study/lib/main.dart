import 'package:flutter/material.dart';

void main() {
  runApp(RowWidgetExample());
}

class RowWidgetExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.red,
              ),
              const SizedBox(width: 12.0,),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.yellow,
              ),
              const SizedBox(width: 12.0,),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.blue,
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              child: Text('텍스트 버튼')),
          OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                foregroundColor: Colors.red,
              ),
              child: Text('아웃라인 버튼')),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.blue,
                elevation: 5,
              ),
              child: Text('엘레베이트 버튼')),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.home,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                width: 16.0,
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(16.0,),
            ),
            width: 200.0,
            height: 100.0,
          ),
        ],
      ),
    )));
  }
}
