import 'package:flutter/cupertino.dart';

class ClosedDrawer extends StatefulWidget {
  @override
  _ClosedDrawerState createState() => _ClosedDrawerState();
}

class _ClosedDrawerState extends State<ClosedDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("No Closed Cash Drawers")),

    );
  }
}