import 'package:mobx/mobx.dart';
import 'package:splash_ifmt/data/models/user/user_model.dart';
import 'package:splash_ifmt/data/repository/user/user_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  void increase(int value) {
    selectedIndex = value;
  }

  @observable
  List<UserModel> user = [];

  @action
  Future<void> getUser() async {
    user.addAll(await UserRepository.getUser());
    print("Chamou usuario no home");
  }
}
