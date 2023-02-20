import 'package:dio/dio.dart';

String baseUrl =
    'http://13.68.210.77:8080/api/v1/ManagerRequest/GetContactPaged';

Map<String, String> headers = {
  'Authorization': 'Bearer'
      ' eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9y'
      'Zy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6InNhaSIsImh0dHA'
      '6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL3VwbiI6Ikh'
      'BUFBTQUxFU0RFViIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGV'
      'udGl0eS9jbGFpbXMvcHJpbWFyeXNpZCI6IjE2MTEiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQ'
      'uY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3ByaW1hcnlncm91cHNpZCI6IjEiLCJodHR'
      'wOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9zaWQiOiI'
      '2MmM4OTIxYi1lOWQyLTU0OTMtYjhjZC0xNjhlMWVjZTczZGUiLCJodHRwOi8vc2NoZW1hcy5taWN'
      'yb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL2dyb3Vwc2lkIjoiMTU3YTJjY2E'
      'tMTk1NC00ZTg5LTlkMzUtYTAzYmJkNzEzNjNkIiwianRpIjoiYTBiNDZkNWMtMDFlMy00OGU4LTlm'
      'ZTQtNDI4OTEyZWMzZTQ1IiwiZXhwIjoxNzA3MTAzNjkxLCJpc3MiOiJoYXBwc2FsZXMuY29tIiwiY'
      'XVkIjoiaGFwcHNhbGVzLmNvbSJ9.d4L4bEIz1lvpFW_4BmwL5Rwh78bKV6OfDXyoD-6QPOo',
  'Content-Type': 'application/json'
};

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> fetchContacts({
    required String path,
    Map<String, dynamic>? query,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = headers;
    return dio.post(
      path,
      data: data,
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ?? '',
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> putData({
    // dio.put method is something like update data.
    required String path,
    Map<String, dynamic>? query,
    String? lang = 'en',
    String? token,
    required Map<String, dynamic> data,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': token ?? '',
    };
    return dio.put(
      path,
      data: data,
      queryParameters: query,
    );
  }
}
//
