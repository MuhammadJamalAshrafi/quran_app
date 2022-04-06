class TranslatedName{

  String? name;

  TranslatedName({this.name});

  factory TranslatedName.fromJson(Map<String, dynamic> data){
    var translatedNameParsed = TranslatedName();
    translatedNameParsed.name = data['name'];
    return translatedNameParsed;
  }
}