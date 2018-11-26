import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../services/auth.dart';

/// Represents a page within the application.
class HQUplinkPage {
  /// Title to be displayed.
  final String title;

  /// Route to respond to.
  final String route;

  /// Widget to build for the content area.
  final WidgetBuilder build;

  const HQUplinkPage({
    @required this.title,
    @required this.route,
    @required this.build,
  });
}

class HQUplinkScaffold extends StatelessWidget {
  final int activeBottomNav;
  final HQUplinkPage page;
  final void Function(int) onBottomNavTapped;

  const HQUplinkScaffold({
    @required this.activeBottomNav,
    @required this.page,
    @required this.onBottomNavTapped,
  });

  @override
  build(BuildContext context) {
    return _ProvidesHQUplinkAuth(
      child: Scaffold(
        appBar: AppBar(
          title: Text(page.title),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: activeBottomNav,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              title: Text('Browse'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
          onTap: onBottomNavTapped,
        ),
        body: page.build(context),
      ),
    );
  }
}

class _ProvidesHQUplinkAuth extends StatefulWidget {
  final Widget child;

  const _ProvidesHQUplinkAuth({
    @required this.child,
  });

  @override
  createState() => _ProvidesHQUplinkAuthState(child: child);
}

class _ProvidesHQUplinkAuthState extends State<_ProvidesHQUplinkAuth> {
  final Widget child;

  _ProvidesHQUplinkAuthState({@required this.child});

  FirebaseUser currentUser;

  @override
  initState() {
    super.initState();
    FirebaseAuth.instance.currentUser().then((currentUser) {
      setState(() {
        this.currentUser = currentUser;
      });
    });
  }

  @override
  build(_) {
    return HQUplinkAuth(
      child: child,
      currentUser: currentUser,
      onCurrentUserChanged: (newUser) {
        setState(() {
          currentUser = newUser;
        });
      },
    );
  }
}
