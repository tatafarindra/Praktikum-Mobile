import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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

    var onPressed;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Column(

        children: [

          Container(
            alignment: Alignment.center,

            // color: Colors.white,
            child:Image.asset(

              'images/gambar.png',
              height: 200,
              width: 100,
            ),
          ),
          Container(
            // color: Colors.white,

          child: Image.asset(
          'images/gambar3.png',
          height: 250,
          width: 500,
          ),
          ),
          Container(
            // color: Colors.white,
            margin: EdgeInsets.all(20),
           child: const Text(

              'All your favorite ramen',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            // color: Colors.white,
            // width: 300,
            margin: EdgeInsets.all(20),
            child: Text(
              'Delicious as is or tossed with your \n favorite ingredients',
              style: TextStyle(
                fontSize: 20,
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
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: 400,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black12,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => login())
                );
              },
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Colors.black12,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }


}