import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: ImageIcon(AssetImage("images/menu.png"), color: Colors.black,size: 40),
        title: Text("Quran App", style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700)),
        elevation: 1.0,
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
