import 'package:flutter/material.dart';

import '../../services/auth.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage();

  @override
  build(BuildContext context) {
    final auth = HQUplinkAuth.of(context);
    final user = auth.currentUser;
    if (user == null) {
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
    return Center(child: Text('Logged in as ${user.displayName}'));
  }
}
