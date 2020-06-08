import 'package:flutter/material.dart';
import 'package:netflixclone/Models/Catalog.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ComicSoonFullList extends StatefulWidget {
  int index;

  ComicSoonFullList(this.index);

  @override
  _ComicSoonFullListState createState() => _ComicSoonFullListState();
}

class _ComicSoonFullListState extends State<ComicSoonFullList> {
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        YoutubePlayer(
          controller: _controller,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 100,
                child: Image.network(movies[widget.index].logo),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.notifications, color: Colors.white),
                      Text("Receber Aviso",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.share, color: Colors.white),
                      Text("Compartilhe",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text("Estreia " + movies[widget.index].dateComicSoon,
              style: TextStyle(color: Colors.white54, fontSize: 15)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(movies[widget.index].title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(movies[widget.index].description,
              style: TextStyle(color: Colors.white54, fontSize: 15)),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
