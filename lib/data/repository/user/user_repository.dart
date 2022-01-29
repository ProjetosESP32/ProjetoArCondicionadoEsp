import 'package:hive/hive.dart';
import 'package:splash_ifmt/data/models/user/user_model.dart';
import 'package:splash_ifmt/shared/constants/constants.dart';

class UserRepository extends UserModelAdapter {
  static Future<UserModel> saveUser(UserModel user) async {
    var userRepo = await Hive.openBox(Constants.DB_USER);
    await userRepo.clear();
    await userRepo.add(user);
    print("Salvo user: " + userRepo.name);
    return user;
  }

  static Future<List<UserModel>> getUser() async {
    var userRepo = await Hive.openBox(Constants.DB_USER);

    List<UserModel> user = [];
    for (int i = 0; i < userRepo.length; i++) {
      user.add(await userRepo.getAt(i));
    }
    return user;
  }

  static Future<bool> isUserStored() async {
    var userRepo = await Hive.openBox(Constants.DB_USER);
    print(userRepo.length);
    return userRepo.isNotEmpty;
  }

  static Future<bool> isUserAuth() async {
    var userRepo = await Hive.openBox(Constants.DB_USER);
    List<UserModel> user = [];

    for (int i = 0; i < userRepo.length; i++) {
      user.add(await userRepo.getAt(i));
    }

    return user[0].isSaved!;
  }
}
