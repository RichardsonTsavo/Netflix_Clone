import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/Models/Catalog.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MoviePageScreem extends StatefulWidget {
  int index;

  MoviePageScreem(this.index);

  @override
  _MoviePageScreemState createState() => _MoviePageScreemState();
}

class _MoviePageScreemState extends State<MoviePageScreem> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId:
            YoutubePlayer.convertUrlToId(movies[widget.index].videoUrl),
        flags: YoutubePlayerFlags(
          autoPlay: false,
          loop: false,
          isLive: false,
          forceHD: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            YoutubePlayer(
              controller: _controller,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 5),
              child: Text(movies[widget.index].title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: <Widget>[
                  Text(movies[widget.index].relevance,
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(movies[widget.index].year,
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(movies[widget.index].description,
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 10),
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.check, color: Colors.white),
                      Text("Minha lista",
                          style: TextStyle(color: Colors.white54)),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.thumb_up, color: Colors.white),
                      Text("Classifique",
                          style: TextStyle(color: Colors.white54)),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.share, color: Colors.white),
                      Text("Compartilhe",
                          style: TextStyle(color: Colors.white54)),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
