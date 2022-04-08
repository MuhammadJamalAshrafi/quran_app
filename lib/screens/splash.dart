import 'package:flutter/material.dart';
import 'package:quran_app/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _naviagateToHome();
  }

  _naviagateToHome() async{
    await Future.delayed(const Duration(seconds: 30)).then((value) => () {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Home())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/logo.png")
            )
          ),
        ),
      ),
    );
  }
}
