import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quran_app/models/chapter_response.dart';

class SurahIndex extends StatefulWidget {
  const SurahIndex({Key? key}) : super(key: key);

  @override
  State<SurahIndex> createState() => _SurahIndexState();
}

class _SurahIndexState extends State<SurahIndex> {
  ChapterResponse? _chapterResponse;
  @override
  void initState(){
    super.initState();
    _getResponse();
  }

  _getResponse() async{
    try {
      print("done");
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
        title: const Text("Quran App"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: _chapterResponse?.chapters?.length ?? 0,
                  itemBuilder: (_,index) => Card(
                    child: ListTile(
                      leading: Text("${_chapterResponse?.chapters![index]?.id?.toString()}."),
                      title: Text("Al-Fatiha", style: TextStyle(fontSize: 16, color: Colors.black)),
                      subtitle: Text("The Opener", style: TextStyle(fontSize: 12, color: Color(0xFF888888))),
                    ),
                  ),
              ),
          ),
        ],
      ),
    );
  }
}
