import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflixclone/pages/ChooseYourUserPageScreem.dart';

class SplashPageScreem extends StatefulWidget {
  @override
  _SplashPageScreemState createState() => _SplashPageScreemState();
}

class _SplashPageScreemState extends State<SplashPageScreem> {
  bool opacity = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1)).then((_) {
      opacity = true;
    });
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => ChooseYourUserPageScreem()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: opacity ? 1.0 : 0.0,
        curve: Curves.linear,
        duration: Duration(seconds: 1),
        child: Center(
            child: Image.asset(
          "images/NetflixLogo.png",
          width: 150,
        )));
  }
}
