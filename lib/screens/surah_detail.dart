import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran_app/models/verses_response.dart';
import 'package:quran_app/widgets/app_drawer.dart';

class SurahDetail extends StatelessWidget {
  const SurahDetail({Key? key}) : super(key: key);

  Future<VersesResponse> _getResponse() async{
        var url = Uri.parse('https://api.quran.com/api/v4/quran/verses/uthmani?chapter_number=22');
        var response = await http.get(url);
        var responseString = response.body;
        var decodedJson = jsonDecode(responseString) as Map<String, dynamic>;
        return VersesResponse.fromJson(decodedJson);
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
                          child: FutureBuilder<VersesResponse>(
                            future: _getResponse(),
                            builder: (context,snapshot) {
                              if(snapshot.connectionState == ConnectionState.done) {
                                return ListView.separated(
                                      scrollDirection: Axis.vertical,
                                      shrinkWrap: true,
                                      itemCount: snapshot.data?.verses?.length ?? 0,
                                      separatorBuilder: (BuildContext context, int index) =>
                                      const SizedBox(height: 20),
                                      itemBuilder: (_,index) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Image.asset(
                                            "images/big_star.png", width: 50,
                                            height: 50),
                                        Text((index+1).toString(), style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontFamily: "Poppins",
                                            fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                    const SizedBox(width: 14),
                                    Expanded(
                                      child: Text(
                                          snapshot.data?.verses?[index].text_uthmani ?? "",
                                          style: const TextStyle(fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "AlMajeedQuranic",
                                              height: 2.25),
                                          textAlign: TextAlign.right),
                                    ),
                                  ],
                                ));
                              }
                              else{return const Text("issue");}
                              }
                            // },
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
