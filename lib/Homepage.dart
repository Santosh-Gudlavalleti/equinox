// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names

import 'package:equinox/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'cardformat.dart';
import 'listing.dart';

class Homepage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  Homepage() : super();
  final String title = "Details";

  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  Icon icon = new Icon(Icons.search);
  gridshow(AsyncSnapshot<List<Listing>> cell) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: cell.data!.map((album) {
          return GestureDetector(
            child: GridTile(
              child: Cards(album),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Details"),
          actions: <Widget>[
            new IconButton(
              icon: icon,
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
                child: FutureBuilder<List<Listing>>(
              future: Service.getdata(),
              builder: (context, cell) {
                if (cell.hasError) {
                  return Text("Error ${cell.error}");
                }

                if (cell.hasData) {
                  return gridshow(cell);
                }
                return Center(child: CircularProgressIndicator());
              },
            )),
          ],
        ));
  }
}
