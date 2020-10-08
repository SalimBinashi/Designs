import 'package:flutter/material.dart';
import 'package:designs/widgets/status_checker.dart';
import 'package:designs/widgets/report_list.dart';

class ClockOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clock Out"),
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
              child: IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
              ),
            ),
          ),
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
                    'FULL SALES REPORT',
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
                case 'PRINT':
                  break;
                case 'SWITCH USER':
                  break;
                case 'DEVICE STATUS':
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return {'PRINT', 'SWITCH USER', 'DEVICE STATUS'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  child: StatusChecker()
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  child: ReportList()
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.grey,
    );
  }
}
