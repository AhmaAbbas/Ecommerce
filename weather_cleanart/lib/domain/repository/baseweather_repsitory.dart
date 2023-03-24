import 'package:weather_cleanart/domain/entities/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getweathercityname(String cityname);
}