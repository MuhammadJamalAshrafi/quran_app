import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran_app/models/chapter_response.dart';
import 'package:quran_app/screens/surah_detail.dart';
import 'package:quran_app/widgets/app_drawer.dart';

class SurahIndex extends StatelessWidget {
  const SurahIndex({Key? key}) : super(key: key);

  Future<ChapterResponse> _getResponse() async {
    var url = Uri.parse('https://api.quran.com/api/v4/chapters?language=en');
    var response = await http.get(url);
    var responseString = response.body;
    var decodedJson = jsonDecode(responseString) as Map<String, dynamic>;
    return ChapterResponse.fromJson(decodedJson);
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
                      image: AssetImage("images/5%_opacity_bg.png"))),
              child: Column(children: [
                const SizedBox(height: 43),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("images/small_star.png", width: 24, height: 24),
                    const SizedBox(width: 10),
                    const Text("Surah Index",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(width: 10),
                    Image.asset("images/small_star.png", width: 24, height: 24),
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
                    child: FutureBuilder<ChapterResponse>(
                      future: _getResponse(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return ListView.separated(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: snapshot.data?.chapters?.length ?? 0,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 20),
                            itemBuilder: (_, index) => GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (_) => SurahDetail(chapter: (snapshot.data?.chapters![index])!)));
                                },
                              child: Row(
                                // children: [
                                //   Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Image.asset("images/big_star.png",
                                          width: 50, height: 50),
                                      Text(
                                          snapshot.data?.chapters![index]?.id?.toString() ?? "",
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                  const SizedBox(width: 34),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                          snapshot.data?.chapters![index]?.name_simple ?? "",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: "Poppins")),
                                      Text(
                                          snapshot.data?.chapters![index]?.translated_name?.name ?? "",
                                          style: const TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF888888),
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "Poppins"))
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                      snapshot.data?.chapters![index]
                                              ?.name_arabic ??
                                          "",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Poppins",
                                          height: 2.5)),
                                  const SizedBox(width: 18),
                                  Image.asset("images/arrow.png")
                                ],
                              ),
                            ),
                          );
                        } else {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                      },
                    ),
                  ),
                )
              ]),
            )));
  }
}
