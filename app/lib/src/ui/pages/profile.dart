import 'package:flutter/material.dart';
import 'package:google_sign_in/widgets.dart';

import '../../services/auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  build(BuildContext context) {
    final auth = HQUplinkAuth.of(context);
    final user = auth.currentUser;
    if (user == null || auth.googleIdentity == null) {
      return Center(
        child: RaisedButton.icon(
          icon: Icon(Icons.person),
          label: Text('Login'),
          onPressed: () {
            auth.signIn();
          },
        ),
      );
    }
    return Center(
      child: RaisedButton.icon(
        icon: Container(
          child: GoogleUserCircleAvatar(
            identity: auth.googleIdentity,
          ),
          padding: EdgeInsets.all(4.0),
        ),
        label: Text('Logout'),
        onPressed: () {
          auth.signOut();
        },
      ),
    );
  }
}
