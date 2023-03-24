class Human {
  String? name;
  double? hight;
  double? weight;
  int? age;
  String? _private;
  String? hair_color;
  Human({String? name, double? hight, double? weight, int? age}) {
    this.name = name;
    this.hight = hight;
    this.weight = weight;
    this.age = age;
  }
  void set_private(String private){
    this._private=private;
  }
  String? get_private() {
    return this._private;

  }
  void playing(){
    print("I am not player");
  }
}
class Football_player extends Human{
  @override
  void playing() {
    print("I am a player");
  }
  @override
  // TODO: implement hair_color
  String? get hair_color => super.hair_color;
  void play()
  {
    print("play football");
  }
}
