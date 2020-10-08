import 'package:flutter/cupertino.dart';

class ClosedChecks extends StatefulWidget {
  @override
  _ClosedChecksState createState() => _ClosedChecksState();
}

class _ClosedChecksState extends State<ClosedChecks> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("No closed Checks")),

    );
  }
}