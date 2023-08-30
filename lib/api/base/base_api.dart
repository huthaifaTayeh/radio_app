import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseApi {
  final String baseUrl;
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    // any other default headers
  };

  BaseApi({required this.baseUrl});

  Future<http.Response> get(String endpoint) async {
    final url = Uri.parse('$baseUrl$endpoint');
    return await http.get(url, headers: headers);
  }

  Future<http.Response> post(String endpoint, {dynamic body}) async {
    final url = Uri.parse('$baseUrl$endpoint');
    return await http.post(url, headers: headers, body: jsonEncode(body));
  }

  // Similarly, you can add PUT, DELETE methods...

  // Handle errors, decode response, etc. (as needed)
}
