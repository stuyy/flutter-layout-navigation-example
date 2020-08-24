import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PaymentItem {
  String title;
  String description;
  int amount;
  DateTime transactionDate;

  PaymentItem(this.title, this.description, this.amount, this.transactionDate);

  Widget buildCard(BuildContext context) {
    return Card(
      child: Container(
        child: ListTile(
          leading: Icon(Icons.attach_money),
          title: Text(DateFormat.yMMMd().format(this.transactionDate).toString()),
          subtitle: Text(this.title),
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return PaymentItemDialog(
                  this.title,
                  this.description,
                  this.amount,
                  this.transactionDate
                ).buildItemDialog(context);
              }
            );
          }
        ),
      )
    );
  }
}

class PaymentItemDialog extends PaymentItem {
  PaymentItemDialog(String title, String description, int amount, DateTime transactionDate) : super(title, description, amount, transactionDate);

  Widget buildItemDialog(BuildContext context) {
    return AlertDialog(
      title: Text(this.title),
      content: SingleChildScrollView(
        child: ListBody(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.description),
                  Divider(color: Colors.black,),
                  Text('Price: \$' + this.amount.toString()),
                  Divider(color: Colors.black),
                  Text(DateFormat.yMMMd().format(this.transactionDate).toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}