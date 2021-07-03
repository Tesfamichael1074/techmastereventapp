
import 'package:dio/dio.dart';
import 'package:techmasterevent/utils.dart';

class DioService {

  Dio _dio;
  Dio get dio => _dio;

  DioService(){
      BaseOptions options = BaseOptions(
          connectTimeout: 6000,
          receiveTimeout: 6000,
          baseUrl: "https://api.techmasterevent.com/",
        );
        _dio = new Dio(options);
        _dio.interceptors.add(LoggingInterceptor());
  }

  
      

      
}