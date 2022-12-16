// Um contract todo mundo que implementar tem que estar de acordo com o contrato
import 'package:project/model/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>>
      getList(); // método futuro a classe não sabe quando esse método vai chegar
}
// Conceitos novos Solid com abstração e repository Pattern