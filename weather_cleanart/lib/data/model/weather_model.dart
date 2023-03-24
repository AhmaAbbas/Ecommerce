import 'package:weather_cleanart/domain/entities/weather.dart';

class WeatherModel extends Weather{

  WeatherModel({
  required super.id,
  required super.cityname,
  required super.descriptions,
  required super.main,
  required super.presseure});
  factory WeatherModel.fromjson(Map<String,dynamic> json ){
    return WeatherModel(
    id: json["id"],
cityname:json["name"],
main: json["weather"][0]["main"],
descriptions: json["weather"][0]["description"],
presseure: json["main"]["pressure"]
);
}


}