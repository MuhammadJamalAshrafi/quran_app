import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const ImageIcon(AssetImage("images/menu.png"), color: Colors.black),
        leadingWidth: 100,
        title: RichText(
          text: TextSpan(
            text: "Quran ",
            style: TextStyle(fontSize: 36, color: Color(0xFF54A7BC),fontFamily: "KohinoorBangla", fontWeight: FontWeight.w700),
            children: [
              TextSpan(
              text: "App",
              style: TextStyle(fontSize: 36, color: Color(0xFFF5CB5C), fontFamily: "KohinoorBangla", fontWeight: FontWeight.w700)
            )
            ]
          ),
        ),
        // title: Text("Quran App", style: TextStyle(color: Colors.black, fontSize: 36, fontWeight: FontWeight.w700)),
        elevation: 0.0,
        centerTitle: true,
      ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text("1. Surah Index",
                    style:TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white
                    )),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xFF54A7BC),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text("2. Juz Index",
                      style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xFF54A7BC),
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: const Center(
                  child: Text("3. Sajda Index",
                      style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )),
                ),
                decoration: BoxDecoration(
                    color: const Color(0xFF54A7BC),
                    borderRadius: BorderRadius.circular(10)
                ),
              )
            ],
          ),
        ),
    );
  }
}
