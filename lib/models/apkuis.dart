import 'package:http/http.dart' as http;
import './modelquest.dart';
import 'dart:convert';


class KuisApi{

  final url = Uri.parse('https://planetaria-fbdbf-default-rtdb.asia-southeast1.firebasedatabase.app/kuis/-OCIqLk-b1tkyzsBB1iz.json');

  Future<List<Kuis>> fetchQuest() async {

    return http.get(url).then((response) {

      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Kuis> newKuisz = [];
      data.forEach((key, value){
        var newKuis = Kuis(
          id: key,
          title: value['title'],
          options: Map.castFrom(value['options']),
        );

        newKuisz.add(newKuis);

      });
      return newKuisz;
    });
  }


}