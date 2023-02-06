import 'package:flutter/material.dart';
import 'package:travel_app_assignment/beach/beach.dart';
import 'package:travel_app_assignment/mountain/mountain.dart';

// import '';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  String name = "Nishant Chahar";
  String beachUrl =
      "https://imgs.search.brave.com/FghpnM7QeTuNUxEDQ7QJtxizEM-L-MLtY3vGJhBD8Dk/rs:fit:632:225:1/g:ce/aHR0cHM6Ly90c2Ux/LmV4cGxpY2l0LmJp/bmcubmV0L3RoP2lk/PU9JUC5zeV94VUVz/VUExLUp5bXRxQU1a/NXRnSGFGaiZwaWQ9/QXBp";
  String mountainUrl =
      "https://imgs.search.brave.com/Nuu8Pa4PFiZwrIL_dgWQOTFseXhgvcUUGOiAZIO060Y/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5D/TDRHRGRqS2JjMndQ/WDQzMGV4OHdRSGFF/OCZwaWQ9QXBp";
  String url =
      "https://imgs.search.brave.com/hxR4HzOZmFbZoJZutiK8u1hTSBTCstvgmSgNrh2BD7s/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uz/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5z/ZWxiN2M5V3ZiQmQt/UTVsWkdsM0hnSGFI/YSZwaWQ9QXBp";

  Widget _searchBar() {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search",
        ),
        cursorColor: Colors.black,
      ),
      color: Color.fromARGB(255, 233, 234, 239),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 150,
                  width: 20,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(url),
                ),
                Text(
                  "   Hello, " + "$name" + "      ",
                  style: TextStyle(fontSize: 23),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.notifications,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  child: Text("   Where do you\n   want to explore today ?",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: _searchBar(),
                )
              ],
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsetsDirectional.all(20),
                    child: Text(
                      "Choose Category",
                      style: TextStyle(fontSize: 23),
                    )),
                InkWell(
                  child: Container(
                    width: 130,
                    child: Text(
                      "See all",
                      textAlign: TextAlign.right,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: InkWell(
                    onTap: () {
                      beach();
                      // Perform action when button is tapped
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.network(
                            beachUrl,
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 20),
                          Text(
                            "Beach",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                    child: InkWell(
                  onTap: () {
                    mountain();
                    // Perform action when button is tapped
                  },
                  onLongPress: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Image.network(
                          mountainUrl,
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 20),
                        Text(
                          "Mountain",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
            ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Card(
                  child: Stack(
                    children: <Widget>[
                      Image.network(
                        "https://imgs.search.brave.com/sD-Z0uAW7TF6qQAIiHF58laEPnDONHqSg1-WjWFik-c/rs:fit:711:225:1/g:ce/aHR0cHM6Ly90c2U0/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5P/SWo3MndXOTdhbUVG/Um9saThnZC1nSGFF/OCZwaWQ9QXBp",
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 10.0,
                        left: 10.0,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 35.0,
                        ),
                      ),
                      Positioned(
                        bottom: 10.0,
                        right: 10.0,
                        child: Text(
                          "Image $index",
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
