import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  String error;

  Failure({required this.error});

  @override
  // TODO: implement props
  List<Object?> get props => [
        error,
      ];
}

class ServerFaulire extends Failure {
  ServerFaulire({required super.error});
  factory ServerFaulire.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.connectionTimeout:
        return ServerFaulire(error: "connectionTimeout with Api Server");
      case DioErrorType.sendTimeout:
        return ServerFaulire(error: "sendTimeout with Api Server");
      case DioErrorType.receiveTimeout:
        return ServerFaulire(error: "receiveTimeout with Api Server");
      case DioErrorType.badCertificate:
        return ServerFaulire(error: "badCertificate with Api Server");
      case DioErrorType.badResponse:
        return ServerFaulire.frombadResponce(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFaulire(error: "Request to Api Server was canceled");
      case DioErrorType.connectionError:
        return ServerFaulire(
            error: "connectionError with Api Server, please try again later");
      case DioErrorType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFaulire(error: "No Internet Connection");
        }
        return ServerFaulire(error: "Unexpected error please try again!");
      default:
        return ServerFaulire(
            error: "Opps There Was an error,please try again!");
    }
  }
  factory ServerFaulire.frombadResponce(int statuscode, dynamic responce) {
    if (statuscode == 400 || statuscode == 401 || statuscode == 403) {
      return ServerFaulire(error: responce['error']['message']);
    } else if (statuscode == 404) {
      return ServerFaulire(error: 'Your Requset Not Found, please try later!');
    } else if (statuscode == 500) {
      return ServerFaulire(error: 'Internal Server Error, please try later!');
    } else {
      return ServerFaulire(error: "Opps There Was an error,please try again!");
    }
  }
}
