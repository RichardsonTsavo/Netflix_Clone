import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/Tabs/ComicSoonTab.dart';
import 'package:netflixclone/Tabs/DownloadTab.dart';
import 'package:netflixclone/Tabs/HomeTab.dart';
import 'package:netflixclone/Tabs/MoreTab.dart';
import 'package:netflixclone/Tabs/SearchTab.dart';

class HomePageScreem extends StatefulWidget {
  int userLoged = 1;

  HomePageScreem(this.userLoged);

  @override
  _HomePageScreemState createState() => _HomePageScreemState();
}

class _HomePageScreemState extends State<HomePageScreem> {
  int currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _tabPages = <Widget>[
      HomeTab(),
      SearchTab(),
      ComicSoonTab(),
      DownloadTab(),
      MoreTab(widget.userLoged)
    ];

    final _bottonNavBarItens = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(Icons.home,
              color: currentTabIndex == 0 ? Colors.white : Colors.white38),
          title: Text(
            "Inicio",
            style: TextStyle(
                color: currentTabIndex == 0 ? Colors.white : Colors.white38),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.search,
              color: currentTabIndex == 1 ? Colors.white : Colors.white38),
          title: Text(
            "Busca",
            style: TextStyle(
                color: currentTabIndex == 1 ? Colors.white : Colors.white38),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today,
              color: currentTabIndex == 2 ? Colors.white : Colors.white38),
          title: Text(
            "Em breve",
            style: TextStyle(
                color: currentTabIndex == 2 ? Colors.white : Colors.white38),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.file_download,
              color: currentTabIndex == 3 ? Colors.white : Colors.white38),
          title: Text(
            "Downloads",
            style: TextStyle(
                color: currentTabIndex == 3 ? Colors.white : Colors.white38),
          )),
      BottomNavigationBarItem(
          icon: Icon(Icons.view_list,
              color: currentTabIndex == 4 ? Colors.white : Colors.white38),
          title: Text(
            "Mais",
            style: TextStyle(
                color: currentTabIndex == 4 ? Colors.white : Colors.white38),
          )),
    ];
    final _bottonNavigatorBar = BottomNavigationBar(
      items: _bottonNavBarItens,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentTabIndex,
      onTap: (int index) {
        setState(() {
          currentTabIndex = index;
        });
      },
    );

    return Scaffold(
      backgroundColor: Colors.white12,
      body: _tabPages[currentTabIndex],
      bottomNavigationBar: _bottonNavigatorBar,
    );
  }
}
