import 'package:designs/widgets/email_look_up.dart';
import 'package:designs/widgets/phone_look_up.dart';
import 'package:flutter/material.dart';

class LookUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Look Up Customer"),
            automaticallyImplyLeading: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
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
                        Icons.lock_outline,
                        color: Colors.white,
                      ),
                      color: Colors.red, //`Icon` to display
                      label: Text(
                        'SWITCH USER',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ), //`Text` to display
                      onPressed: () {
                        //Code to execute when Floating Action Button is clicked
                        //...
                      },
                    ),
                  )),
              // popup menu button at the end of the appbar
              PopupMenuButton<String>(
                onSelected: (String value) {
                  switch (value) {
                    case 'DEVICE STATUS':
                      break;
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {'DEVICE STATUS'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Text(choice),
                    );
                  }).toList();
                },
              )
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: "Phone Number"),
                Tab(text: "Name/Email"),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: TabBarView(children: [
                  phoneNumberLookUp(),
                  emailLookUp(),
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
