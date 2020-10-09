import 'dart:math';
import 'package:flappy_search_bar/scaled_tile.dart';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Phone {
  final String emailNumber;

  Phone(this.emailNumber, String s);
}

class emailLookUp extends StatefulWidget {
  @override
  _emailLookUpState createState() => _emailLookUpState();
}

class _emailLookUpState extends State<emailLookUp> {
  final SearchBarController<Phone> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Phone>> _getALlemails(String text) async {
    await Future.delayed(Duration(seconds: text.length == 4 ? 10 : 1));
    if (isReplay) return [Phone("Replaying !", "Replaying body")];
    if (text.length == 5) throw Error();
    if (text.length == 6) return [];
    List<Phone> emails = [];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      emails.add(
          Phone("$text $i", "body random number : ${random.nextInt(100)}"));
    }
    return emails;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<Phone>(
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getALlemails,
          searchBarController: _searchBarController,
          cancellationWidget: Text("Cancel"),
          emptyWidget: Text("empty"),
          indexedScaledTileBuilder: (int index) =>
              ScaledTile.count(1, index.isEven ? 2 : 1),
          onCancelled: () {
            print("Cancelled triggered");
          },
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          onItemFound: (Phone number, int index) {
            return Container(
              color: Colors.lightBlue,
              child: ListTile(
                title: Text(number.emailNumber),
                isThreeLine: true,
                subtitle: Text(number.emailNumber),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Detail()));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            Text("Detail"),
          ],
        ),
      ),
    );
  }
}
