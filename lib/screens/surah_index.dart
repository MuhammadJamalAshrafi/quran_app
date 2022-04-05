import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SurahIndex extends StatefulWidget {
  const SurahIndex({Key? key}) : super(key: key);

  @override
  State<SurahIndex> createState() => _SurahIndexState();
}

class _SurahIndexState extends State<SurahIndex> {
  @override
  void initState(){
    super.initState();
    _getResponse();
  }

  _getResponse() async{
    var url = Uri.parse('https://api.quran.com/api/v4/chapters?language=en');
    var response = await http.get(url);
    print('Response body: ${response.body}');
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
                itemCount: 10,
                  itemBuilder: (_,index) => const Card(
                    child: ListTile(
                      leading: Text("1."),
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
