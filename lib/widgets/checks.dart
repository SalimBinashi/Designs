import 'package:designs/screens/closed_checks.dart';
import 'package:designs/screens/home_screen.dart';
import 'package:designs/screens/open_checks.dart';
import 'package:designs/screens/paid_checks.dart';
import 'package:designs/views/order_header.dart';
import 'package:flutter/material.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  Icon custIcon = Icon(Icons.search);
  Widget custSearchBar = Text("Checks");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Checks"),
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => {Navigator.pop(context, false)},
            ),
            actions: [
              IconButton(
                icon: custIcon,
                onPressed: () {
                  setState(() {
                    if (this.custIcon.icon == Icons.search) {
                      this.custIcon = Icon(Icons.cancel);
                      this.custSearchBar = TextField(
                        textInputAction: TextInputAction.go,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      );
                    } else {
                      Icon custIcon = Icon(Icons.search);
                      Widget custSearchBar = Text("Checks");
                    }
                  });
                },
              ),
              Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'SWITCH USER',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ), //`Text` to display
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  )),
              PopupMenuButton<String>(
                onSelected: (String value) {
                  switch (value) {
                    case 'Device Status':
                      break;
                    case 'Show My Checks':
                      break;
                    case 'Advanced Filter':
                      break;
                    case 'Select Checks':
                      break;
                    case 'Advanced Check Search':
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {
                    'Dispatch Driver',
                    'Device Status',
                    'Show My Checks',
                    'Advance Filter',
                    'Select Checks'
                        'Advanced Check Search'
                  }.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: "OPEN CHECKS"),
                Tab(text: "PAID CHECKS"),
                Tab(text: "CLOSED CHECKS")
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey,
                child: TabBarView(children: [
                  OpenChecks(),
                  PaidChecks(),
                  ClosedChecks(),
                ]),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Container(
                  height: 500.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        child: SizedBox(
                          height: 30.0,
                        ),
                      ),
                      OrderHead(),
                      SizedBox(
                        height: 1.0,
                        child: Container(
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      Container(
                        height: 300,
                      ),
                      Container(
                        color: Colors.grey,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 10.0,
                                  bottom: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Credits:"),
                                  Text("0.00"),
                                  Text("Subtotal:"),
                                  Text("0.00"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Discounts:"),
                                  Text("0.00"),
                                  Text("Tax:"),
                                  Text("0.00"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Tips(0%):"),
                                  Text("0.00"),
                                  Text("Balance Due:"),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("         "),
                                  Text("         "),
                                  Text("TOTAL:"),
                                  Text(
                                    "0.00",
                                    style: TextStyle(
                                        fontSize: 25.0, color: Colors.blue),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
