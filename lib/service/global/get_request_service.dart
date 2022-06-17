import 'package:dio/dio.dart';

class GetService {
  static Future getRequest(String url) async {
    try {
      Response res = await Dio().get(url);
      return res;
    } catch (e) {
      return "noInternet";
    }
  }
}
