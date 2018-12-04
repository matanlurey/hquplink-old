import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hquplink/src/ui/pages/profile.dart';
import 'pages/browse.dart';
import '../services/auth.dart';

class HQUplinkHome extends StatefulWidget {
  @override
  State createState() => HQUplinkHomeState();
}

class HQUplinkHomeState extends State<HQUplinkHome> {
  int _currentIndex = 1;

  final List<Widget> _pages = const <Widget>[
    const Center(child: Text('home')),
    const BrowsePage(),
    const ProfilePage(),
  ];

  final List<Text> _titles = const <Text>[
    const Text('Home'),
    const Text('Browse'),
    const Text('Profile'),
  ];

  @override
  build(BuildContext context) {
    return _ProvidesHQUplinkAuth(
      child: Scaffold(
        appBar: AppBar(
          title: _titles[_currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
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
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: _pages[_currentIndex],
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
  createState() => _ProvidesHQUplinkAuthState();
}

class _ProvidesHQUplinkAuthState extends State<_ProvidesHQUplinkAuth> {
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
      child: widget.child,
      currentUser: currentUser,
      onCurrentUserChanged: (newUser) {
        setState(() {
          currentUser = newUser;
        });
      },
    );
  }
}
