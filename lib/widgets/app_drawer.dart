import 'package:flutter/material.dart';
import 'package:quran_app/screens/surah_index.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      child: Drawer(
        elevation: 0.0,
        backgroundColor: const Color(0xFF54A7BC),
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF54A7BC))
              ),
                child: Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: RichText(
                          text: const TextSpan(
                              text: "Quran ",
                              style: TextStyle(fontSize: 44, color: Colors.white,fontFamily: "KohinoorBangla", fontWeight: FontWeight.w700),
                              children: [
                                TextSpan(
                                    text: "App",
                                    style: TextStyle(fontSize: 44, color: Color(0xFFF5CB5C), fontFamily: "KohinoorBangla", fontWeight: FontWeight.w700)
                                )
                              ]
                          ),
                        ),
                      )
                  ),
                )
            ),
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (_) => const SurahIndex()));
                        },
                        child: Row(
                          children: [
                            Image.asset("images/index.png"),
                            const SizedBox(width: 14),
                            const Text("Surah Index", style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white))
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Image.asset("images/index.png"),
                          const SizedBox(width: 14),
                          const Text("Juz Index", style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Image.asset("images/index.png"),
                          const SizedBox(width: 14),
                          const Text("Sajda Index", style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white))
                        ],
                      ),
                      const SizedBox(height: 40),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white54)
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Image.asset("images/help.png", color: Colors.white),
                          const SizedBox(width: 14),
                          const Text("Help Guide", style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Image.asset("images/introduction.png", color: Colors.white),
                          const SizedBox(width: 14),
                          const Text("Introduction", style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white))
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Image.asset("images/share.png", color: Colors.white),
                          const SizedBox(width: 14),
                          const Text("Share App", style: TextStyle(fontFamily: "Poppins", fontSize: 22, fontWeight: FontWeight.w500, color: Colors.white))
                        ],
                      ),
                      const SizedBox(height: 78),
                      Center(
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/40%_opacity_bg.png"),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Text("Version 0.0.1",style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white38, fontFamily: "Poppins", fontSize: 16))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
