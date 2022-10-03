import 'package:flutter/material.dart';

class msg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Message',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Container(
                height: 40,
                width: 80,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
