import 'package:flutter/material.dart';

import 'listing.dart';

class Cards extends StatefulWidget {
  const Cards(this.cell);
  @required
  final Listing cell;

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  List<dynamic> _list = List<String>.empty();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.grey[600],
      child: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                widget.cell.name,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[300]),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                widget.cell.dept,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[300]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
