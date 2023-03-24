import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather_cleanart/core/utls/constants.dart';
import 'package:weather_cleanart/data/model/weather_model.dart';

abstract class Base_RemoteDataSource{
  Future<WeatherModel?> getcountryweather(String country);
}
class RemoteDataSource extends Base_RemoteDataSource{
  @override
  Future<WeatherModel?> getcountryweather(String country) async{
    try{
      final  response=await Dio().get("${AppConstants.baseurl}/weather?q=$country&appid=${AppConstants.appkey}");
      return WeatherModel.fromjson(response.data);
    }catch(e){
      print(e);
      return null;
    }
  }

}