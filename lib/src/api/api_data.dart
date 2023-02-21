import 'package:http/http.dart' as http;

class API {
  static const String _apiUrl = 'https://icanhazdadjoke.com';

  static Future<String> getJoke() async {
    final response =
        await http.get(Uri.parse(_apiUrl), headers: {'Accept': 'text/plain'});
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load dad joke');
    }
  }
}
