import 'package:project/model/post_model.dart';
import 'package:project/repositories/home_repository.dart';
import 'package:flutter/material.dart';

class HomeController {
  // injetando a interface do home repository
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);

// criando o objeto valuenotifier
  ValueNotifier<List<PostModel>> posts = ValueNotifier<List<PostModel>>([]);

  fetch() async {
    posts.value = await _homeRepository.getList();
    // o fetch vai na api pega o getlist e retorna no post.value
  }
}
