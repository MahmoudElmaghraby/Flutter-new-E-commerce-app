import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthBase {
  User? get currentUser;

  Stream<User?> authSteamChanges();

  Future<User?> loginWithEmailAndPassword(String email, String password);

  Future<User?> signupWithEmailAndPassword(String email, String password);

  Future<void> logout();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<User?> loginWithEmailAndPassword(String email, String password) async {
    final userAuth = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  Future<User?> signupWithEmailAndPassword(
      String email, String password) async {
    final userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return userAuth.user;
  }

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  //To get a stream of all changes happens
  @override
  Stream<User?> authSteamChanges() => _firebaseAuth.authStateChanges();

  @override
  Future<void> logout() async => await _firebaseAuth.signOut();
}
