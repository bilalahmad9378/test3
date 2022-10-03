import 'package:flutter/material.dart';

class great extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 190,
                top: 40,
              ),
              child: Text(
                'SOME GREAT ADVICE FROM \n GREAT PROGRAMMERS',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/image/2.jpg'))),
                )
              ],
            )
          ],
        ));
  }
}
