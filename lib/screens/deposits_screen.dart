import 'package:flutter/material.dart';

class DepositScreen extends StatefulWidget {
  @override
  _DepositScreenState createState() => _DepositScreenState();
}

class _DepositScreenState extends State<DepositScreen> {
  // final deposits = ['juma', 'kamau', 'ken'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deposits"),
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
                    // logout
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
      ),
      body: Column(
        children: [
          FlatButton(
            color: Colors.grey,
            child: Text("Add Deposit"),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deposits",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: Text(
                            "Total:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),

                        /// point o apply change in deposits total
                        Text(
                          "0.0",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Date",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Action",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.blue
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Amount",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "User",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Flexible(
                  //   child: ListView.separated(
                  //     // shrinkWrap: false,
                  //     // itemCount: deposits.length,
                  //     // itemBuilder: (context, index) {
                  //     //   return ListTile(
                  //     //     title: Text(deposits[index]),
                  //     //   );
                  //     // },
                  //     separatorBuilder: (context, index) {
                  //       return Divider();
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
// void addItem() {
//   setState(() {
//     deposits.add(deposits[0]);
//   });
//
// }
}
