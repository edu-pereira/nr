import 'package:flutter/services.dart';

class NewRelicChannel {
  static const platform =
      const MethodChannel('com.example.new_relic_app/newRelic');

  Future<void> crashNow({String message}) async {
    try {
      await platform.invokeMethod('crashNow', {'message': message});
    } catch (e) {
      print(e);
    }
  }

  Future<void> noticeHttpTransaction(
      {String url,
      String httpMethod,
      int statusCode,
      int startTime,
      int endTime,
      int bytesSent,
      int bytesReceived}) async {
    try {
      await platform.invokeMethod('noticeHttpTransaction', {
        'url': url,
        'httpMethod': httpMethod,
        'statusCode': statusCode,
        'startTime': startTime,
        'endTime': endTime,
        'bytesSent': bytesSent,
        'bytesReceived': bytesReceived
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> noticeHttpFailure(
      {String url,
      String httpMethod,
      int statusCode,
      int startTime,
      int endTime,
      String message}) async {
    try {
      await platform.invokeMethod('noticeNetworkFailure', {
        'url': url,
        'httpMethod': httpMethod,
        'statusCode': statusCode,
        'startTime': startTime,
        'endTime': endTime,
        'message': message,
      });
    } catch (e) {
      print(e);
    }
  }
}
