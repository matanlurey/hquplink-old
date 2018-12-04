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
  @override
  build(BuildContext context) {
    return MaterialApp(
      title: 'HQ Uplink',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HQUplinkHome(),
        pages.BrowseUnits.routeName: (BuildContext context) =>
            const pages.BrowseUnits(),
        pages.BrowseWeapons.routeName: (BuildContext context) =>
            const pages.BrowseWeapons(),
      },
    );
  }
}
