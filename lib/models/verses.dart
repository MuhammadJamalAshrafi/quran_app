class Verses{

  int? id;
  String? verse_key;
  String? text_uthmani;

  Verses({
    this.id,
    this.verse_key,
    this.text_uthmani
    });

  factory Verses.fromJson(Map<String, dynamic> data){
    var versesParsed = Verses();
    versesParsed.id = data['id'];
    versesParsed.verse_key = data['verse_key'];
    versesParsed.text_uthmani = data['text_uthmani'];
    return versesParsed;
  }
}