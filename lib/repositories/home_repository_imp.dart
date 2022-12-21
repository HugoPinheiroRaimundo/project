import 'package:project/model/post_model.dart';
import 'package:project/repositories/home_repository.dart';
import 'package:dio/dio.dart';

class HomeRepositoryImp implements HomeRepository {
  @override
  Future<List<PostModel>> getList() async {
    try {
      var response =
          // Diferença entre o Dio e o http em flutter é que o Dio não precisa fazer o decode do json e ele é mais completo.
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      return (response.data as List)
          .map((e) => PostModel.fromJson(e))
          .toList(); // mapeando o objeto da api e retornando como uma lista.
    } catch (e) {
      print(e);
    }
    return [];
  }
}
