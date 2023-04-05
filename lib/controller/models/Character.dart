class Character {
  String name = "";
  String image = "";
  String description = "";
  String comics = "";
  String series = "";
  String stories = "";
  String events = "";
  List seriesList = [];

  Character(
      {name, image, description, comics, series, stories, events, seriesList});

//Directamente del JSON de la API
  Character.fromJson(Map<String, dynamic> jsonCharacter) {
    name = jsonCharacter["name"];
    image = jsonCharacter["thumbnail"]["path"];
    description = jsonCharacter["description"];
    comics = jsonCharacter["comics"]["returned"].toString();
    series = jsonCharacter["series"]["returned"].toString();
    stories = jsonCharacter["stories"]["returned"].toString();
    events = jsonCharacter["events"]["returned"].toString();
    seriesList = jsonCharacter["series"]["items"];
  }
}
