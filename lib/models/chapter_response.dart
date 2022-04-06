import 'package:quran_app/models/chapter.dart';

class ChapterResponse{
  List<Chapter>? chapters;

  ChapterResponse({this.chapters});

  factory ChapterResponse.fromJson(Map<String, dynamic> data){
    var chapterResponseParsed = ChapterResponse();
    for(var chapterJson in (data['chapters'] as List<dynamic>)){
      var chapterMap = chapterJson as Map<String, dynamic>;
      chapterResponseParsed.chapters?.add(Chapter.fromJson(chapterMap));
    }
    return chapterResponseParsed;
  }


}