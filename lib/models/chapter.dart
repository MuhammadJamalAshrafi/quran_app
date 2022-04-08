import 'package:quran_app/models/translated_name.dart';

class Chapter{

  int? id;
  String? name_simple;
  String? name_arabic;
  TranslatedName? translated_name;

  Chapter({this.id, this.name_simple, this.name_arabic, this.translated_name});

  factory Chapter.fromJson(Map<String, dynamic> data){
    var chapterParsed = Chapter();
    chapterParsed.id = data['id'];
    chapterParsed.name_simple = data['name_simple'];
    chapterParsed.name_arabic = data['name_arabic'];
    chapterParsed.translated_name = TranslatedName.fromJson(data['translated_name']);
    return chapterParsed;
  }
}
