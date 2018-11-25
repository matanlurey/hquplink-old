import 'package:flutter/material.dart';

import 'ui/pages/browse.dart' as pages;
import 'ui/pages/profile.dart' as pages;
import 'ui/scaffold.dart';

/// Root [Widget] for the `HQ Uplink` application.
class HQUplinkApp extends StatefulWidget {
  const HQUplinkApp();

  @override
  createState() => _HQUplinkAppState();
}

class _HQUplinkAppState extends State<HQUplinkApp> {
  var _activeIndex = 0;

  @override
  build(BuildContext context) {
    // Determine the active page, by index of selected bottom navigation button.
    final allPages = <HQUplinkPage>[
      HQUplinkPage(
        title: 'Home',
        route: '/',
        build: (_) => Center(child: Text('Home')),
      ),
      HQUplinkPage(
        title: 'Browse',
        route: '/browse',
        build: (_) => pages.BrowsePage(),
      ),
      HQUplinkPage(
        title: 'Profile',
        route: '/profile',
        build: (_) => pages.ProfilePage(),
      ),
    ];
    return MaterialApp(
      title: 'HQ Uplink',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: Map<String, WidgetBuilder>.fromIterable(allPages,
          key: (p) => p.route,
          value: (p) {
            return (context) {
              return HQUplinkScaffold(
                activeBottomNav: _activeIndex,
                onBottomNavTapped: (index) {
                  setState(() {
                    _activeIndex = index;
                  });
                  switch (index) {
                    case 0:
                      return Navigator.pushReplacementNamed(
                        context,
                        '/',
                      );
                    case 1:
                      return Navigator.pushReplacementNamed(
                        context,
                        '/browse',
                      );
                    case 2:
                      return Navigator.pushReplacementNamed(
                        context,
                        '/profile',
                      );
                  }
                },
                page: allPages[_activeIndex],
              );
            };
          }),
    );
  }
}
