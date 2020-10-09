import 'package:flutter/cupertino.dart';

class ActiveDrawer extends StatefulWidget {
  @override
  _ActiveDrawerState createState() => _ActiveDrawerState();
}

class _ActiveDrawerState extends State<ActiveDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("No Active Cash Drawers")),

    );
  }
}