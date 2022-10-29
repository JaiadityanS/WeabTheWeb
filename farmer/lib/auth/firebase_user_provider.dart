import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class FarmerFirebaseUser {
  FarmerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

FarmerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FarmerFirebaseUser> farmerFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FarmerFirebaseUser>(
      (user) {
        currentUser = FarmerFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
