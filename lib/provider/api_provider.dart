import 'package:dio/dio.dart';

class ApiProvider {

  static Dio api = Dio(BaseOptions(
    baseUrl: "https://dailyprayer.abdulrcs.repl.co/api",
    connectTimeout: const Duration(milliseconds: 50000),
    receiveTimeout: const Duration(milliseconds: 50000),
  ));


  getPrayerTimeData({country = "bangladesh"}) async{
    try {
      var response = await api.get("/$country");
      return response;
    } on DioError catch (error){
      return error.response;
    }
  }
}