import 'package:firebase_auth/firebase_auth.dart';
import 'package:mobx/mobx.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../models/user/user_model.dart';
import '../../repository/user/user_repository.dart';

part 'auth_service.g.dart';

class AuthService = _AuthServiceBase with _$AuthService;

abstract class _AuthServiceBase with Store {
  @action
  Future<void> signIn() async {
    final googleUser = await GoogleSignIn().signIn();
    final googleAuth = await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    await UserRepository.saveUser(UserModel(
      admin: true,
      email: googleUser!.email,
      senha: "1234",
      isSaved: true,
      name: googleUser.displayName,
      telefone: "DD 99999-9999",
      photoUrl: googleUser.photoUrl,
    ));
  }

  @action
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    GoogleSignIn().disconnect();
  }
}
