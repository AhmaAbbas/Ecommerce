class User_Create{
  String name;
  String id;
  String email;
  String phone;
  User_Create({
    required this.email,
    required this.phone,
    required this.id,
    required this.name});
  factory User_Create.fromjson(Map<String ,dynamic> json){
    return User_Create(email: json['email'], phone: json['phone'], id: json['id'], name: json['name']);
  }
  Map<String ,dynamic> tomap(){
    return {
      "name":name,
      "id":id,
      "email":email,
      "phone":phone,
    };
  }
}