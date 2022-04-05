import 'package:flutter/material.dart';

class SurahIndex extends StatelessWidget {
  const SurahIndex({Key? key}) : super(key: key);

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
