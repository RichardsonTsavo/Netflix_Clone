import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreTab extends StatefulWidget {
  int currentUser;

  MoreTab(this.currentUser);

  @override
  _MoreTabState createState() => _MoreTabState();
}

class _MoreTabState extends State<MoreTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Container(
                            width: widget.currentUser == 0 ? 80 : 65,
                            height: widget.currentUser == 0 ? 80 : 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                              child: Icon(
                                Icons.person,
                                size: widget.currentUser == 0 ? 60 : 45,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Usuário 1",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: widget.currentUser == 1 ? 80 : 65,
                            height: widget.currentUser == 1 ? 80 : 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                              child: Icon(Icons.person,
                                  size: widget.currentUser == 1 ? 60 : 45),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Usuário 2",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: widget.currentUser == 2 ? 80 : 65,
                            height: widget.currentUser == 2 ? 80 : 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                              child: Icon(
                                Icons.person,
                                size: widget.currentUser == 2 ? 60 : 45,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Usuário 3",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: widget.currentUser == 3 ? 80 : 65,
                            height: widget.currentUser == 3 ? 80 : 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                              child: Icon(
                                Icons.person,
                                size: widget.currentUser == 3 ? 60 : 45,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Usuário 4",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white))
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: widget.currentUser == 4 ? 80 : 65,
                            height: widget.currentUser == 4 ? 80 : 65,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
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
                              child: Icon(
                                Icons.person,
                                size: widget.currentUser == 4 ? 60 : 45,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text("Usuário 5",
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.edit, color: Colors.white),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Gerenciar perfil",
                          style: TextStyle(fontSize: 17, color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white12,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.sms,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Fale da NetFlix para seus amigos.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Compartilhe este link para seus amigos ficarem por dentro dos seus filmes e séries favoritos",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Termos e condições",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        color: Colors.black,
                        child: Center(
                            child: Text("http://www.netflix.com/br/e/0320...",
                                style: TextStyle(color: Colors.white))),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("Copiar Link"),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              "https://logodownload.org/wp-content/uploads/2014/09/facebook-logo-2-1.png",
                              width: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.white30,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              "https://logodownload.org/wp-content/uploads/2018/03/gmail-logo-1.png",
                              width: 40,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Google",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.white30,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Image.network(
                              "https://upload.wikimedia.org/wikipedia/commons/d/dc/Flat_UI_-_mail.png",
                              width: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mensagens",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 30.0,
                        width: 1.0,
                        color: Colors.white30,
                        margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: <Widget>[
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                              size: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mais",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 60,
              color: Colors.white12,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Icon(
                      Icons.check,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  Text(
                    "Minha lista",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white12,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child: Text("Configurações do aplicativo",
                          style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child:
                          Text("Conta", style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child:
                          Text("Ajuda", style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child:
                          Text("Sair", style: TextStyle(color: Colors.white)),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
