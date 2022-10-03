import 'dart:async';

import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  int counter = 0;
  StreamController countercontroller = StreamController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'Mobile UI',
          textAlign: TextAlign.center,
        )),
        body: Center(
          child: Column(
            children: [
              StreamBuilder(
                stream: countercontroller.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(snapshot.data.toString());
                  } else {
                    return Text(
                      "0",
                      style: TextStyle(fontSize: 20),
                    );
                  }
                },
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton( 
          onPressed: () {
            counter++;
            countercontroller.sink.add(counter);
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
