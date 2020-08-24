import 'package:flutter/material.dart';
import 'payment-item.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({ Key key }) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  List<PaymentItem> _items = [
    PaymentItem("Auto Repair Front Hood", "Repair service for BMW on the front of the hood", 300, DateTime(2020, 9, 5, 12, 3, 6)),
    PaymentItem('Large SUV Towing','Towing approx. 5 miles', 109, DateTime(2019, 12, 5)),
    PaymentItem('1','2', 3, DateTime(2020, 3, 9)),
    PaymentItem('1','2', 3, DateTime(2020, 4, 10)),
    PaymentItem("Auto Repair Front Hood", "Repair service for BMW on the front of the hood", 300, DateTime(2020, 9, 5, 12, 3, 6)),
    PaymentItem('Large SUV Towing','Towing approx. 5 miles', 109, DateTime(2019, 12, 5)),
    PaymentItem('1','2', 3, DateTime(2020, 3, 9)),
    PaymentItem('1','2', 3, DateTime(2020, 4, 10))
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Container(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final item = _items[index];
            return item.buildCard(context);
          },
        )
      )
    );
  }
}