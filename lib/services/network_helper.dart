import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  const NetworkHelper({
    required this.url,
  });

  Future getJsonData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      throw 'Error: ${response.statusCode}';
    }
  }
}
