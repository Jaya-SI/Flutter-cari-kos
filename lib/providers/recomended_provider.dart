import 'dart:convert';

import 'package:cari_kos/models/recomended.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class RecomendedProvider extends ChangeNotifier {
  getRecomended() async {
    var result = await http
        .get(Uri.parse('http://bwa-cozy.herokuapp.com/recommended-spaces'));

    print(result.statusCode);
    print(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Recomended> recomended =
          data.map((item) => Recomended.fromJson(item)).toList();
      return recomended;
    } else {
      return <Recomended>[];
    }
  }
}
