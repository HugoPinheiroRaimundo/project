import 'dart:convert';

import 'package:project/model/post_model.dart';
import 'package:project/repositories/home_repository.dart';
import 'package:flutter/services.dart'; // habilita o rootBundle

class HomeRepositoryMock implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    // variável para ler o json dentro de data, rootBundle identifica tudo dentro de asssets
    var value = await rootBundle
        .loadString('assets/data.json'); // await pois é um feature de string
    List postJson = jsonDecode(value); // lista de post json
    return postJson.map((e) => PostModel.fromJson(e)).toList();
    // Trazendo a lista de json para uma lista de postModel
  }
}
