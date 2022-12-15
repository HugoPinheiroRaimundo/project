import 'package:project/model/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
