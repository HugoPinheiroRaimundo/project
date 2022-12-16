import 'package:project/repositories/home_repository.dart';

class HomeController {
  // injetando a interface do home repository
  final HomeRepository _homeRepository;
  HomeController(this._homeRepository);
}
