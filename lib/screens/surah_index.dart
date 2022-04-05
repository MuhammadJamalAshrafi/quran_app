import 'package:flutter/material.dart';

class SurahIndex extends StatelessWidget {
  const SurahIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quran App"),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                itemCount: 10,
                  itemBuilder: (_,index) => ListTile(
                    title: Text("test"),
                  ),
              ),
          ),
        ],
      ),
    );
  }
}
