import 'package:quran_app/models/verses.dart';

class VersesResponse{

  List<Verses>? verses;

  VersesResponse({this.verses});

  factory VersesResponse.fromJson(Map<String, dynamic> data){
    var versesResponseParsed = VersesResponse();
    versesResponseParsed.verses = [];
    for(var versesJson in (data['verses'] as List<dynamic>)){
      var versesMap = versesJson as Map<String, dynamic>;
      versesResponseParsed.verses?.add(Verses.fromJson(versesMap));
    }
    return versesResponseParsed;
  }
}