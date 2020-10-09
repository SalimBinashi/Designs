import 'dart:math';
import 'package:flappy_search_bar/scaled_tile.dart';

import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

class Phone {
  final String phoneNumberNumber;

  Phone(this.phoneNumberNumber, String s);
}

class phoneNumberLookUp extends StatefulWidget {
  @override
  _phoneNumberLookUpState createState() => _phoneNumberLookUpState();
}

class _phoneNumberLookUpState extends State<phoneNumberLookUp> {
  final SearchBarController<Phone> _searchBarController = SearchBarController();
  bool isReplay = false;

  Future<List<Phone>> _getALlphoneNumbers(String text) async {
    await Future.delayed(Duration(seconds: text.length == 4 ? 10 : 1));
    if (isReplay) return [Phone("Replaying !", "Replaying body")];
    if (text.length == 5) throw Error();
    if (text.length == 6) return [];
    List<Phone> phoneNumbers = [];

    var random = new Random();
    for (int i = 0; i < 10; i++) {
      phoneNumbers.add(
          Phone("$text $i", "body random number : ${random.nextInt(100)}"));
    }
    return phoneNumbers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchBar<Phone>(
          searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
          headerPadding: EdgeInsets.symmetric(horizontal: 10),
          listPadding: EdgeInsets.symmetric(horizontal: 10),
          onSearch: _getALlphoneNumbers,
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
                title: Text(number.phoneNumberNumber),
                isThreeLine: true,
                subtitle: Text(number.phoneNumberNumber),
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
