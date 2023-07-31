



import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;


class RemoteServices extends Interceptor{

  final Dio dio = Dio();
  static var client = http.Client();




/*

  static Future<GetTestimonialResponseModel?> getTestimonialRemote(
      {required String token}) async {
    String basicAuth =
        'Basic ${base64.encode(utf8.encode('$username:$password'))}';
    var response = await client.post(
      Uri.parse('$baseUrl/getTestimonials'),
      headers: <String, String>{
        "Content-Type": "application/json",
        'Accept': 'application/json',
        *//*      "uuid": "text",*//*
        'authorization': basicAuth
      },
    );
    log(" getTestimonialRemote ==== ${response.body}");
    if (response.statusCode >= 200 || response.statusCode <= 299) {
      log('SUCCESS');
      var data = response.body;
      var otpResponse = getTestimonialResponseModelFromJson(data);
      log(otpResponse.toString());
      return otpResponse;
    } else {
      log('FAILED');
      log('error---');
      var errorResponse = errorResponseModelFromJson(response.body);
      return Future.error(errorResponse);
    }
  }
  */




}