import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15, right: 20),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.deepOrangeAccent,
                  ),
                ),
                Expanded(
                  child: Card(
                    shadowColor: Colors.black,
                    child: Container(
                      height: 100,
                      child: Text('Welcome Back, Arizona!'),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shadowColor: Colors.black,
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: [
                              Expanded(child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.account_circle),
                                    title: Text('Your Account Balance'),
                                    subtitle: Text("\$505,135.73"),
                                  ),
                                ],
                              )),
                              Column(
                                children: [
                                  ButtonBar(
                                    children: <Widget>[
                                      IconButton(
                                        icon: Icon(Icons.account_box),
                                        onPressed: () {

                                        },
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.account_balance_wallet),
                            title: Text('This Month\'s Expenses'),
                            subtitle: Text('\$23,456'),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
    );
  }
}