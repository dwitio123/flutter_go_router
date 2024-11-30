class Person {
  String? name, city;

  Person({this.name, this.city});

  @override
  String toString() {
    return "Saya adalah $name, alamat di $city";
  }
}
