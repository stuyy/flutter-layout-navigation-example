import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  ShopPage({ Key key }): super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Hello'),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: InkWell(
                child: Image.network(
                  'https://images.unsplash.com/photo-1509042239860-f550ce710b93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                  fit: BoxFit.fill,
                ),
                onTap: () {
                  print(index);
                  Navigator.pushNamed(context, '/shop/item', arguments: 'Hi');
                },
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            );
          },
        )
      ),
    );
  }
}