import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flyflutter/demo.dart';
import 'package:flyflutter/great.dart';
import 'package:flyflutter/login.dart';
import 'package:flyflutter/message.dart';
import 'package:flyflutter/mobile.dart';
import 'package:flyflutter/msg.dart';
import 'package:flyflutter/second.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "XXX",
      appId: "XXX",
      messagingSenderId: "XXX",
      projectId: "XXX",
    ),
  );
  runApp(MaterialApp(
    home: Second(),
  ));
}

class FlyFlutter extends StatefulWidget {
  @override
  State<FlyFlutter> createState() => _FlyFlutterState();
}

class _FlyFlutterState extends State<FlyFlutter> {
  final formkey = GlobalKey<FormState>();
  adddata(value) async {
    await FirebaseFirestore.instance.collection("Student").add({
      'name': value,
    });
  }

  TextEditingController name = TextEditingController();

  TextEditingController number = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
          appBar: AppBar(title: Text('Welcome'), centerTitle: true),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Padding(
              // padding: const EdgeInsets.all(8.0),
              padding: EdgeInsets.only(top: 40),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Create Acount',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            autofillHints: [AutofillHints.givenName],
                            maxLength: 20,
                            keyboardType: TextInputType.text,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(
                                  RegExp('[a-zA-Z]')),
                            ],
                            controller: name,
                            decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 3,
                                    color: Colors.blue,
                                  ),
                                ),
                                hoverColor: Colors.red,
                                hintText: 'Enter your Name',
                                labelText: 'Name ',
                                suffixIcon: Icon(Icons.person),
                                iconColor: Colors.red),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ('Enter your name');
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              autofillHints: [AutofillHints.email],
                              controller: number,
                              inputFormatters: [],
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.blue)),
                                  hintText: ('Enter your Email'),
                                  suffixIcon: Icon(Icons.email),
                                  contentPadding: EdgeInsets.all(0),
                                  labelText: ('Email')),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Enter the Email ");
                                } else {
                                  return null;
                                }
                              }),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Colors.blue)),
                                  hintText: ('Enter your password'),
                                  suffixIcon: Icon(Icons.security),
                                  contentPadding: EdgeInsets.all(0),
                                  labelText: ('Password')),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Enter the password ");
                                } else {
                                  return null;
                                }
                              }),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(20),
                    child: RawMaterialButton(
                      onPressed: () {
                        adddata(name);

                        if (isLoading == true) return;

                        setState(() => isLoading = true);
                        if (formkey.currentState!.validate()) {
                          print('Great');
                        } else {
                          return null;
                        }

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Second()));
                      },
                      fillColor: Colors.blue,
                      child: isLoading
                          ? CircularProgressIndicator(color: Colors.white)
                          : Text('Submit'),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  TextButton(
                    child: Text("if you have account? Sign in "),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Second()));
                    },
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
