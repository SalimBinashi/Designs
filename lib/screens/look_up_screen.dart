import 'package:flutter/material.dart';

class LookUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Lookup Customer',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
                    Icons.lock_open_outlined,
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
          PopupMenuButton<String>(
              onSelected: (String value) {
                switch(value) {
                  case "Device Status":
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return {
                  'DEVICE STATUS'
                } .map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
          )
        ],

      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(),
        ),

      ),
    );
  }
}
