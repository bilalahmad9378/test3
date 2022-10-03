import 'package:flutter/material.dart';
import 'package:flyflutter/message.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF06283D),
        body: Container(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top: 200, right: 40),
              child: Icon(
                Icons.fingerprint,
                color: Colors.red.shade200,
                size: 80,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 40, right: 30),
              child: Text(
                'Sign in with Touch ID',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 80, right: 10),
              child: Text(
                'Use your Touch ID for faster easier access to your account',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            // SizedBox(
            //   width: 300,
            //   height: 50,
            //   child: RawMaterialButton(
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(50)),
            //     fillColor: Colors.red.shade100,
            //     onPressed: (() {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder: (context) => new message(),
            //           ));
            //     }),
            //     child: Text(
            //       'Login with Email',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "New User ? Sign Up",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Help ?',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
