import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HQUplinkAuth extends InheritedWidget {
  static final _googleSignIn = GoogleSignIn();

  static HQUplinkAuth of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(HQUplinkAuth);
  }

  final FirebaseUser currentUser;
  final void Function(FirebaseUser) onCurrentUserChanged;

  HQUplinkAuth({
    @required Widget child,
    FirebaseUser currentUser,
    @required this.onCurrentUserChanged,
  })  : currentUser = currentUser ?? _googleSignIn.currentUser,
        super(child: child);

  @override
  updateShouldNotify(HQUplinkAuth other) => currentUser != other.currentUser;

  Future<void> signIn() async {
    final authWithGoogle = await (await _googleSignIn.signIn()).authentication;
    final firebaseUser = FirebaseAuth.instance.signInWithGoogle(
      accessToken: authWithGoogle.accessToken,
      idToken: authWithGoogle.idToken,
    );
    onCurrentUserChanged(await firebaseUser);
  }
}
