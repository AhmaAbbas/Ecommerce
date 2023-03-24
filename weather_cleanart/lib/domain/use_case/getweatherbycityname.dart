import 'package:weather_cleanart/domain/entities/weather.dart';
import 'package:weather_cleanart/domain/repository/baseweather_repsitory.dart';

class GetWeatherByCityname{
  final BaseWeatherRepository weatherRepository;
  GetWeatherByCityname(this.weatherRepository);
  Future<Weather> excute(String cityname)async{
    return await weatherRepository.getweathercityname(cityname);
  }
}