import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  print('Fetching: $url');

  try {
    final resp = await http.get(url);
    if (resp.statusCode == 200) {
      final data = jsonDecode(resp.body);
      print('Response JSON:');
      print(data);
    } else {
      print('Request failed: ${resp.statusCode}');
      print(resp.body);
    }
  } catch (e) {
    print('Error while fetching: $e');
  }
}
