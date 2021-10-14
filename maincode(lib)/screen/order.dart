import 'package:flutter/material.dart';
import 'package:craft/helpers/style.dart';
import 'package:craft/models/order.dart';
import 'package:craft/providers/app.dart';
import 'package:craft/providers/user.dart';
import 'package:craft/widgets/custom_text.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    final app = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        elevation: 0.0,
        title: CustomText(text: "Orders"),
        leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      backgroundColor: white,
      body: ListView.builder(
          itemCount: user.orders.length,
          itemBuilder: (_, index){
            OrderModel _order = user.orders[index];
            return ListTile(
              leading: CustomText(
                text: "\₹${_order.total}",
                weight: FontWeight.bold,
              ),
              title: Text(_order.description),
            );
          }),
    );
  }
}
