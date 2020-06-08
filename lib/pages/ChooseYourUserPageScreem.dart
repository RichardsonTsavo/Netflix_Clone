import 'package:flutter/material.dart';
import 'package:netflixclone/pages/HomePageScreeem.dart';

class ChooseYourUserPageScreem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
          title: Image.asset(
            "images/NetflixLogo.png",
            width: 100,
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.edit),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text("Quem está assistindo?",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePageScreem(0)));
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.yellow[800],
                              Colors.yellow[400],
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.person, size: 70),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Usuário 1",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePageScreem(1)));
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.blue[800],
                              Colors.blue[400],
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.person, size: 70),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Usuário 2",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePageScreem(2)));
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.blueGrey[800],
                              Colors.blueGrey[400],
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.person, size: 70),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Usuário 3",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePageScreem(3)));
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.red[800],
                              Colors.red[400],
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.person, size: 70),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Usuário 4",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => HomePageScreem(4)));
                  },
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.green[800],
                              Colors.green[400],
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.person, size: 70),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text("Usuário 5",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
              ],
            )
          ],
        ));
  }
}
