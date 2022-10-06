import 'package:figma/home.dart';
import 'package:flutter/material.dart';
import 'package:figma/my_flutter_app_icons.dart';
import 'package:figma/main.dart';

void main() {
  runApp(const login());
}

class login extends StatelessWidget {
  const login ({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text(''),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading:
        Builder (
            builder: (BuildContext context) {
              return IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  }, icon: const Icon(Icons.arrow_back, color: Colors.black, ));
            }
        ),
      ),

      body: Column(

        children: [

          Container(
            alignment: Alignment.topLeft,

            // color: Colors.white,

          ),
          // Container(
          //   // color: Colors.white,
          //
          //   child: Image.asset(
          //     'images/gambar3.png',
          //     height: 250,
          //     width: 500,
          //   ),
          // ),
          Container(
            alignment: Alignment.topLeft,
            // color: Colors.white,
            margin: EdgeInsets.all(10),
            child: const Text(

              'Welcome Back',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            // color: Colors.white,
            // width: 300,
            margin: EdgeInsets.all(10),
            child: Text(
              'Login to your account',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            // color: Colors.white,
            // width: 300,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(20),
            child: Text(
              'Email',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            // color: Colors.white,
            // width: 300,
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: new InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            // color: Colors.white,
            // width: 300,
            margin: EdgeInsets.all(20),
            child: Text(
              'Password',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            // color: Colors.white,
            // width: 300,
            margin: EdgeInsets.all(20),
            child: TextField(
              decoration: new InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 400,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => home())
                );
              },
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          // Container(
          //   margin: EdgeInsets.all(10),
          //   width: 400,
          //   height: 50,
          //   child: TextButton(
          //     style: TextButton.styleFrom(
          //       backgroundColor: Colors.black12,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //     ),
          //     onPressed: () {},
          //     child: Text(
          //       "Log In",
          //       style: TextStyle(
          //         color: Colors.black12,
          //         fontSize: 20,
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );


  }
}