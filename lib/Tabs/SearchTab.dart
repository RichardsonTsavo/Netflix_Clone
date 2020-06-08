import 'package:flutter/material.dart';
import 'package:netflixclone/Models/Catalog.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Icon(Icons.search, color: Colors.white),
          title: TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration.collapsed(
                hintText: "Busque por séries, filmes, gêneros,etc.",
                hintStyle: TextStyle(color: Colors.white70)),
          ),
          backgroundColor: Colors.white24,
          actions: <Widget>[
            Icon(
              Icons.keyboard_voice,
              color: Colors.white,
            )
          ],
        ),
        body: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: movies.length + 1,
              itemBuilder: (context, index) {
                return index == 0
                    ? Padding(
                        padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                        child: Text("Buscas Populares",
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)))
                    : Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 100,
                        color: Colors.white12,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: Image.network(
                                movies[index - 1].imageUrl,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    movies[index - 1].title,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
              }),
        ));
  }
}
