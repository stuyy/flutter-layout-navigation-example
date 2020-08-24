import 'package:flutter/material.dart';
import '../widgets/CircleButton.dart';

class CardItemRoute extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[800],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(
              'Yank',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icon(Icons.search),
                color: Colors.red[600],
                margin: EdgeInsets.only(right: 5),
                onPressed: () {

                },
              ),
              CircleButton(
                icon: Icon(Icons.supervised_user_circle),
                color: Colors.red[600],
                margin: EdgeInsets.only(right: 10),
                onPressed: () {

                },
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Card(
                    shadowColor: Colors.black,
                    color: Colors.red,
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Sample',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                        ),
                        Container(
                          child: Image.network(
                            'https://s.aolcdn.com/commerce/autodata/images/USC90BMC681A021001.jpg',
                          ),
                        ),
                        ButtonBar(
                          children: [
                            CircleButton(
                              icon: Icon(Icons.favorite_border),
                              color: Colors.red[700],
                              onPressed: () {
                                print("Hi");
                              },
                            )
                          ],
                        )
                      ],
                    )
                ),
              ]
            ),
          )
        ],
      ),
    );
  }
}