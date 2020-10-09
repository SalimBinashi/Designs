import 'package:designs/screens/active_drawer.dart';
import 'package:designs/screens/closed_drawer.dart';
import 'package:designs/screens/open_drawer.dart';
import 'package:flutter/material.dart';
import 'package:designs/screens/home_screen.dart';

class CashDrawerScreen extends StatefulWidget {
  @override
  _CashDrawerScreenState createState() => _CashDrawerScreenState();
}

class _CashDrawerScreenState extends State<CashDrawerScreen> {
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
          backgroundColor: Colors.black54,
          appBar: AppBar(
            title: Text("Cash Drawers"),
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => {Navigator.pop(context, false)},
            ),
            actions: [
              Padding(
                  padding: EdgeInsets.only(right: 0.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.assignment,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'CASH DRAWER REPORT',
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
                    case 'Show My Drawers':
                      break;
                    case 'Switch User':
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {
                    'Device Status',
                    'Show My Drawers',
                    'Switch User',
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
                Tab(text: "ACTIVE"),
                Tab(text: "OPEN"),
                Tab(text: "CLOSED")
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                  child: TabBarView(children: [
                    ActiveDrawer(),
                    OpenDrawer(),
                    ClosedDrawer(),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
