import 'package:flutter/material.dart';
import 'package:project/Controllers/home_controller.dart';
import 'package:project/model/post_model.dart';
import 'package:project/repositories/home_repository_mock.dart';
import 'package:project/repositories/home_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryMock());

  @override
  void initState() {
    super
        .initState(); // assim que a homepage for iniciada faça alguma coisa, nesse caso usando o controller para fazer a função fetch
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller
            .posts, //observando a controle do post com o valuenotifierzs
        builder: (_, list, __) {
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              title: Text(list[idx].title),
            ),
          );
        },
      ),
    );
  }
}
