 abstract class Animal{
  void eat();
  void legs(){
    print("any animal has 4 legs");
  }
}
class Lion implements Animal{
  @override
  void eat() {
    // TODO: implement eat
    print("eating meats");
  }

  @override
  void legs() {
    // TODO: implement legs
  }

}