import 'dart:html';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            /// for image main image
            Container(
              color: Colors.blue,
              height: 270,
              width: double.infinity,
              child: Image.asset("facebook.png",fit:BoxFit.fitWidth),
            ),

            ///center
            Center(
              child: Column(
                children: [
                  ///text feild 1
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 450,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Phone number or email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  ///text feild 2
                  Container(
                    width: 450,
                    child: TextField(
                      obscureText:true,
                      decoration: InputDecoration(
                        hintText: "password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  ///log in button
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Log in"),
                    style: ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(
                          Size(450, 50),
                        ),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromRGBO(1, 89, 220, 1.0)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)))),
                  ),

                  SizedBox(height: 20),

                  ///forgot password outline button
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(LinearBorder.none),
                      foregroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(1, 89, 220, 1.0)),
                    ),
                  ),

                  SizedBox(height: 10),

                  ///back outline button
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("Back",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Color.fromRGBO(1, 89, 220, 1.0))),
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll(LinearBorder.none),
                    ),
                  ),

                  SizedBox(height: 30),

                  ///Row for divider
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 170,
                        child: Divider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text("OR"),
                      ),
                      SizedBox(
                        width: 170,
                        child: Divider(),
                      ),
                    ],
                  ),

                  SizedBox(height: 40),

                  /// create a new account button

                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Create new account",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromRGBO(185, 232, 255, 0.6196078431372549),
                      ),
                      fixedSize: MaterialStatePropertyAll(Size(450, 50)),
                      foregroundColor: MaterialStatePropertyAll(
                          Color.fromRGBO(1, 89, 220, 1.0)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
