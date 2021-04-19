import 'package:http/http.dart' as http;

class Request {
  final String urlBase = 'https://api.github.com/users';
  String url;
  int counter;
  Request({
    this.url = "",
    this.counter,
  });
  Future<http.Response> get() {
    if (url.length == 0) {
      url = '?since=0';
    }
    return http.get(Uri.parse(urlBase + url)).timeout(Duration(minutes: 1));
  }
}
