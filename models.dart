class Pet {
  int? id;
  String? Name;
  String? Breed;
  String? Age;
  String? Location;

  Pet({this.id, this.Name, this.Breed, this.Age, this.Location});

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }
    map['Name'] = Name;
    map['Breed'] = Breed;
    map['Age'] = Age;
    map['Location'] = Location;
    return map;
  }

  Pet.fromMap(Map<String, dynamic> map) {
    this.id = map['id'];
    this.Name = map['Name'];
    this.Breed = map['Breed'];
    this. Age = map['Age'];
    this.Location = map['Location'];
  }
}
