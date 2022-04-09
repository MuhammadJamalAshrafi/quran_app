import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran_app/models/chapter_response.dart';
import 'package:quran_app/widgets/app_drawer.dart';

class SurahDetail extends StatefulWidget {
  const SurahDetail({Key? key}) : super(key: key);

  @override
  State<SurahDetail> createState() => _SurahDetailState();
}

class _SurahDetailState extends State<SurahDetail> {
  ChapterResponse? _chapterResponse;

  @override
  void initState() {
    super.initState();
    _getResponse();
  }

  _getResponse() async {
    try {
      var url = Uri.parse('https://api.quran.com/api/v4/chapters?language=en');
      var response = await http.get(url);
      var responseString = response.body;
      var decodedJson = jsonDecode(responseString) as Map<String, dynamic>;
      setState(() {
        _chapterResponse = ChapterResponse.fromJson(decodedJson);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Builder(builder: (context) {
            return IconButton(
              iconSize: 50,
              icon: const ImageIcon(AssetImage("images/menu.png"),
                  color: Colors.black),
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          }),
          leadingWidth: 100,
          title: RichText(
            text: const TextSpan(
                text: "Quran ",
                style: TextStyle(
                    fontSize: 36,
                    color: Color(0xFF54A7BC),
                    fontFamily: "KohinoorBangla",
                    fontWeight: FontWeight.w700),
                children: [
                  TextSpan(
                      text: "App",
                      style: TextStyle(
                          fontSize: 36,
                          color: Color(0xFFF5CB5C),
                          fontFamily: "KohinoorBangla",
                          fontWeight: FontWeight.w700))
                ]),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        drawer: const AppDrawer(),
        backgroundColor: Colors.white,
        body: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/5%_opacity_bg.png")
                  )
              ),
              child: Column(
                  children: [
                    const SizedBox(height: 25),
                    const Text("The Opening", style: TextStyle(fontSize: 14, color: Color(0xFF888888), fontFamily: "Poppins", fontWeight: FontWeight.w500)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("images/small_star.png",width: 24, height: 24),
                        const SizedBox(width: 10),
                        const Text("Surah Al Fatihha",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Poppins",
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(width: 10),
                        Image.asset("images/small_star.png",width: 24, height: 24),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Container(
                      decoration: BoxDecoration(
                          border:
                          Border.all(color: const Color(0xFFE5E5E5), width: 1)),
                    ),
                    const SizedBox(height: 30),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 20.44),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            textDirection: TextDirection.rtl,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset("images/big_star.png", width: 50, height: 50),
                                  const Text("1",style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w500))
                                ],
                              ),
                              const SizedBox(width: 14),
                              const Expanded(
                                child: Text(" صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400, fontFamily: "Poppins", height: 2.25, letterSpacing: 0.3),
                                  textAlign: TextAlign.right),
                              ),
                            ],
                          ),
                        ),
                        // child: ListView.separated(
                        //   scrollDirection: Axis.vertical,
                        //   shrinkWrap: true,
                        //   itemCount: _chapterResponse?.chapters?.length ?? 0,
                        //   separatorBuilder: (BuildContext context, int index) =>
                        //   const SizedBox(height: 20),
                        //   itemBuilder: (_,index) => Row(
                        //     // children: [
                        //     //   Row(
                        //     children: [
                        //       Stack(
                        //         alignment: Alignment.center,
                        //         children: [
                        //           Image.asset("images/big_star.png", width: 50, height: 50),
                        //           Text(_chapterResponse?.chapters![index]?.id?.toString() ?? "",style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w500))
                        //         ],),
                        //       const SizedBox(width: 34),
                        //       Column(
                        //         crossAxisAlignment: CrossAxisAlignment.start,
                        //         children: [
                        //           Text(_chapterResponse?.chapters![index]?.name_simple ?? "", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w400, fontFamily: "Poppins")),
                        //           Text(_chapterResponse?.chapters![index]?.translated_name?.name ?? "", style: TextStyle(fontSize: 14, color: Color(0xFF888888), fontWeight: FontWeight.w300, fontFamily: "Poppins"))
                        //         ],
                        //       ),
                        //       const Spacer(),
                        //       Text(_chapterResponse?.chapters![index]?.name_arabic ?? "", style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400, fontFamily: "Poppins", height: 2.5)),
                        //       const SizedBox(width: 18),
                        //       Image.asset("images/arrow.png")
                        //     ],
                        //   ),
                        // ),
                      ),
                    )
                  ]),
            ))
    );
  }
}
