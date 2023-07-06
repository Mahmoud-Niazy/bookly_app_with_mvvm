import 'package:dio/dio.dart';

class ApiServices {
  static String baseurl = 'https://www.googleapis.com/books/v1/' ;
  static late Dio dio ;

  static initDio(){
    dio = Dio(
      BaseOptions(
        baseUrl: baseurl,
      ),
    );
  }

  static Future<Map<String,dynamic>> getData({
    required String endPoint ,
})async{
    var response = await dio.get(
      '$baseurl$endPoint',
    );
    return response.data ;
  }
}