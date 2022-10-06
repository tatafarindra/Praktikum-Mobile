import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({super.key});
  static const Color white = Color(0xFFFFFFFF);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primaryColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    Future<bool> _onWillPop() async {
      return false;
    }

    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          appBar: AppBar(
            title: Container(
              alignment: Alignment.center,
              child: Text(
                "Home",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
            ),
            backgroundColor: Colors.white,
          ),

          body : Column(
            children: [
              Container(
                width: 340,
                height: 50,
                margin: EdgeInsets.only(left: 0, top: 25),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.black26),
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    hintText: 'Search',
                  ),
                ),
              ),
              Container(
                alignment: AlignmentDirectional.centerStart,
                margin: EdgeInsets.only(left: 25, top: 20),
                child : Text(
                  'Top Menu :)',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.5
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 15),
                        child: Image.asset(
                            'images/Rectangle 2.png'
                        ),
                      ),

                    ],
                  ),

                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, top: 15),
                        child: Image.asset(
                            'images/Rectangle 3.png'
                        ),
                      ),

                    ],
                  )

                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 15),
                    child: Image.asset(
                        'images/Rectangle 4.png'
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 15),
                    child: Image.asset(
                        'images/Rectangle 5.png'
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, top: 15),
                    child: Image.asset(
                        'images/Rectangle 6.png'
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 15),
                    child: Image.asset(
                        'images/Rectangle 7.png'
                    ),
                  ),
                ],
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedFontSize: 18,
            // selectedIconTheme: IconThemeData(color: Colors.amberAccent),
            selectedItemColor: Color.fromRGBO(255, 166, 0, 1),
            unselectedItemColor: Colors.grey,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.message),
                label: 'Messages',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.calendar),
                label: 'Calendar',
              ),
              BottomNavigationBarItem(
                icon: FaIcon(FontAwesomeIcons.user),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex, //New
            onTap: _onItemTapped,
          )
      ),
    );
  }


}