import 'package:flutter/material.dart';
import 'package:netflixclone/Models/Catalog.dart';

class ComicSoonSimpleList extends StatefulWidget {
  int index;

  ComicSoonSimpleList(this.index);

  @override
  _ComicSoonSimpleListState createState() => _ComicSoonSimpleListState();
}

class _ComicSoonSimpleListState extends State<ComicSoonSimpleList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              child: Image.network(
                movies[widget.index].imageUrl,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(movies[widget.index].title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text(movies[widget.index].subtitleComicSoon,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Text(movies[widget.index].dateComicSoon,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 5,
        )
      ],
    );
  }
}
