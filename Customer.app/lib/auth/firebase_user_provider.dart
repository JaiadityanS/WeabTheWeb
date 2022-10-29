import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class MultiCFirebaseUser {
  MultiCFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MultiCFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MultiCFirebaseUser> multiCFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MultiCFirebaseUser>(
      (user) {
        currentUser = MultiCFirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
