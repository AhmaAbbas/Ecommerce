import 'package:weather_cleanart/data/data_source/remote_datasource.dart';
import 'package:weather_cleanart/domain/entities/weather.dart';
import 'package:weather_cleanart/domain/repository/baseweather_repsitory.dart';

class WeatherRepository implements BaseWeatherRepository{
  RemoteDataSource remoteDataSource;
  WeatherRepository(this.remoteDataSource);
  @override
  Future<Weather> getweathercityname(String cityname) async {
     return (await remoteDataSource.getcountryweather(cityname))!;
  }

}