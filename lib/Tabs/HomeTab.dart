import 'package:flutter/material.dart';
import 'package:netflixclone/Models/Catalog.dart';
import 'package:netflixclone/pages/MoviePageScreem.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: false,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset("images/NetflixLogo2.png", width: 20),
                FlatButton(
                  child: Text("Séries",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                FlatButton(
                  child: Text("Filmes",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
                FlatButton(
                  child: Text("Minha Lista",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                )
              ]),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Stack(
            children: <Widget>[
              Image.asset("images/WallPaperThe100.png",
                  width: 1080, fit: BoxFit.cover),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 350,
                  ),
                  Center(
                      child: Image.network(
                    "https://pngimage.net/wp-content/uploads/2018/06/the-100-png-7.png",
                    width: 220,
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                          "https://i7.uihere.com/icons/428/242/559/top10-employee-analysis-01b91621342b01625ada0fb65b00e4ef.png",
                          width: 40,
                          color: Colors.white),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Top 7 de hoje no Brasil",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text("Minha lista",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        child: FlatButton(
                          onPressed: () {},
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.play_arrow),
                              Text("Assistir")
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 30,
                          ),
                          Text("Saiba mais",
                              style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Prévias",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Container(
                    height: 140,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    child: CircleAvatar(
                                      radius: 70,
                                      backgroundImage:
                                          NetworkImage(movies[index].imageUrl),
                                    ),
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MoviePageScreem(index)));
                                    },
                                  ),
                                  Positioned(
                                    child: Image.network(
                                      movies[index].logo,
                                      width: 100,
                                    ),
                                    bottom: 5,
                                  )
                                ],
                              ));
                        }),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Séries emocionantes",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      MoviePageScreem(index)));
                            },
                            child: Container(
                                width: 150,
                                height: 350,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Image.network(
                                  movies[index].imageUrl,
                                  fit: BoxFit.cover,
                                )),
                          );
                        }),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Em alta",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return Container(
                              width: 150,
                              height: 350,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              child: Image.network(
                                movies[index].imageUrl,
                                fit: BoxFit.cover,
                              ));
                        }),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
