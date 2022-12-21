import 'package:flutter/material.dart';
import 'package:project/Controllers/home_controller.dart';
import 'package:project/model/post_model.dart';
import 'package:project/repositories/home_repository_imp.dart';
//import 'package:project/repositories/home_repository_mock.dart';
//import 'package:project/repositories/home_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final HomeController _controller = HomeController(HomeRepositoryMock()); // pegando os dados mockados
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super
        .initState(); // assim que a homepage for iniciada faça alguma coisa, nesse caso usando o controller para fazer a função fetch
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ValueListenableBuilder<List<PostModel>>(
        valueListenable: _controller
            .posts, //observando a controle do post com o valuenotifierzs
        builder: (_, list, __) {
          return ListView.separated(
            itemCount: list.length,
            itemBuilder: (_, idx) => ListTile(
              leading: Text(
                  list[idx].id.toString()), // setando o id da lista pela API
              trailing: const Icon(Icons
                  .arrow_forward_ios), // adicionando o icone de seta a direita da cell
              title: Text(list[idx].title), // setando o title das cell
              onTap: () => Navigator.of(context).pushNamed("/details",
                  arguments: list[
                      idx]), // clique com navegação para determinada telaa com botão voltar.
            ),
            separatorBuilder: (_, __) =>
                const Divider(), // adicionando a linha de separação entre as cell
          );
        },
      ),
    );
  }
}
