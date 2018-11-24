import 'package:flutter/material.dart';

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
    return Scaffold(
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
    );
  }
}
