import 'package:http/http.dart' as http;

class API {
  ///
  /// [_apiUrl] is the url of the API
  ///
  static const String _apiUrl = 'https://icanhazdadjoke.com';

  static Future<String> getJoke() async {
    ///
    /// [response] is the response from the API
    ///
    final response =
        await http.get(Uri.parse(_apiUrl), headers: {'Accept': 'text/plain'});

    ///
    /// [response.statusCode] is the status code of the response
    ///
    if (response.statusCode == 200) {
      return response.body;
    } else {
      ///
      /// [Exception] is the error to throw if the API fails to load the joke
      ///
      throw Exception('Failed to load dad joke');
    }
  }
}
