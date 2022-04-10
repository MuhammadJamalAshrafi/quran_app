import 'package:flutter/material.dart';
import 'package:quran_app/widgets/app_drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (context) {
              return IconButton(
                iconSize: 50,
                icon: const ImageIcon(AssetImage("images/menu.png"), color: Colors.black),
                onPressed: () => Scaffold.of(context).openDrawer(),
              );
            }
          ),
          leadingWidth: 100,
          title: RichText(
            text: const TextSpan(
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
          elevation: 0.0,
          centerTitle: true,
        ),
          drawer: const AppDrawer(),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
            child: Column(
              children: [
                const SizedBox(height: 43),
                const Text("As Salam u Alaikum",style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFFE5E5E5), width: 1)
                  ),
                ),
                const SizedBox(height: 19),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children:[
                        const Text("1. Surah Index",
                            style:TextStyle(
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            )),
                        const Spacer(),
                        Container(
                          width: 70,
                          height: 70,
                          child: Container(
                            width: 7.56,
                            height: 16,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/arrow.png"),
                              )
                            ),
                          ),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("images/polygon.png")
                            )
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("images/div_bg.png"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children:[
                        const Text("2. Juz Index",
                            style:TextStyle(
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            )),
                        const Spacer(),
                        Container(
                          width: 70,
                          height: 70,
                          child: Container(
                            width: 7.56,
                            height: 16,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/arrow.png"),
                                )
                            ),
                          ),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/polygon.png")
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("images/div_bg.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                const SizedBox(height: 18),
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children:[
                        const Text("3. Sajda Index",
                            style:TextStyle(
                                fontSize: 20,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                color: Colors.white
                            )),
                        const Spacer(),
                        Container(
                          width: 70,
                          height: 70,
                          child: Container(
                            width: 7.56,
                            height: 16,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("images/arrow.png"),
                                )
                            ),
                          ),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/polygon.png")
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage("images/div_bg.png"),
                          fit: BoxFit.cover
                      )
                  ),
                ),
                const Spacer(),
                Container(
                  width: 180,
                  height: 180,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/40%_opacity_bg.png")
                    )
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
