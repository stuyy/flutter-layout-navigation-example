import 'package:flutter/material.dart';
import 'package:flutter_layout_app/routes/carditem.dart';
import 'package:flutter_layout_app/screens/shop.dart';
import 'payments.dart';
import 'home.dart';
import 'settings.dart';
import 'routes/carditem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Bank App'),
      routes: {
        '/shop/item': (context) => CardItemRoute()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  static List<Widget> _pages = <Widget>[
    HomePage(),
    PaymentPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    print(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 250,
        height: 2000,
        color: Colors.black,
        child: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                child: DrawerHeader(
                  margin: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.unsplash.com/photo-1478186014654-5a7e3898daa5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80')),
                    color: Colors.red[900],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.redAccent[700],
                  padding: EdgeInsets.zero,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FlatButton(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.home),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('Home'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      FlatButton(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.attach_money),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('Payments'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                      FlatButton(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.shop),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('Shop'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ShopPage()));
                        },
                      ),
                      FlatButton(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.settings),
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text('Settings'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onPressed: () {
                          print("Hello");
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ),
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red[900],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[900],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text('Payments'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
          )
        ],
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: _pages.elementAt(_selectedIndex)
      )
    );
  }
}
