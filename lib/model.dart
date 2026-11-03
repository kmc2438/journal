import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> loadPosts() async {
  var url = Uri.parse('https://kmc2400.github.io/tweet/hunter.json');
  var res = await http.get(url);
  if (res.statusCode != 200) throw Exception('読み込み失敗');

  List posts = jsonDecode(utf8.decode(res.bodyBytes));
  return posts;
}
