import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DownloadTab extends StatefulWidget {
  @override
  _DownloadTabState createState() => _DownloadTabState();
}

class _DownloadTabState extends State<DownloadTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
          title: Row(children: <Widget>[
            Text("Smart Download ", style: TextStyle(color: Colors.white)),
            Text(
              "Ativo",
              style: TextStyle(color: Colors.blue),
            )
          ])),
      backgroundColor: Colors.black12,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundColor: Colors.white12,
            child: Icon(
              Icons.file_download,
              color: Colors.black54,
              size: 80,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Os filmes e séries baixados ficam\naqui.",
            style: TextStyle(color: Colors.white70, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              width: 250,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(5)),
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Encontre um titulo para baixar",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
