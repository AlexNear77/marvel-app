class Character {
  String api = "";
  String description = "";
  String auth = "";
  bool whitHttps = false;
  bool cors = false;
  String link = "";
  String category = "";

  Character({api, description, auth, whitHttps, cors, link, category});

  Character.fromJson(Map<String, dynamic> jsonCharacter) {
    this.api = jsonCharacter[
        "Api"]; // EN EL JSON del COMIC debe de ir igual Api === { json que regresa la api}
    // Asi con todos ....
  }
}
