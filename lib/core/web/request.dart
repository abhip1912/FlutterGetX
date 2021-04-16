import 'package:http/http.dart' as http;

class Request {
  final String urlBase = 'https://api.github.com/users';
  final String url;
  Request({this.url = ""});

  Future<http.Response> get() {
    return http.get(Uri.parse(urlBase + url)).timeout(Duration(minutes: 1));
  }
}
