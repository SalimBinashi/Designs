import 'package:designs/views/cash_drawer_page.dart';
import 'package:designs/views/lookup_customer_page.dart';
import '';import 'package:flutter/material.dart';
import 'package:designs/views/clock_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
        child: ListView(
          children: [
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ClockOutPage()),);
              },
              child:
              Text("Clock Out Page"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LookUpPage()),);
              },
              child:
              Text("Lookup Customer"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CashDrawerPage()),);
              },
              child:
              Text("Cash Drawers"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                // Navigator.push(context,
                //   MaterialPageRoute(builder: (context) => LookUpPage()),);
              },
              child:
              Text("Deposits"),
              color: Colors.blue,
            ),
          ],
        ),
      )
    );

  }
}
