import 'package:quran_app/models/translated_name.dart';

class Chapter{

  int? id;
  String? name_simple;
  String? name_arabic;
  String? revelation_place;
  int? revelation_order;
  int? verses_count;
  TranslatedName? translated_name;

  Chapter({this.id, this.name_simple, this.name_arabic, this.revelation_place, this.revelation_order, this.verses_count, this.translated_name});

  factory Chapter.fromJson(Map<String, dynamic> data){
    var chapterParsed = Chapter();
    chapterParsed.id = data['id'];
    chapterParsed.name_simple = data['name_simple'];
    chapterParsed.name_arabic = data['name_arabic'];
    chapterParsed.revelation_place = data['revelation_place'];
    chapterParsed.revelation_order = data['revelation_order'];
    chapterParsed.verses_count = data['verses_count'];
    chapterParsed.translated_name = TranslatedName.fromJson(data['translated_name']);
    return chapterParsed;
  }
}
