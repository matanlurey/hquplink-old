import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'HQ Uplink',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: _scaffold(
        body: Center(
          child: const [
            Text('Home'),
            Text('Browse'),
            Text('Profile'),
          ][_activeIndex],
        ),
        context: context,
      ),
    );
  }

  Widget _scaffold({
    @required Widget body,
    @required BuildContext context,
  }) {
    return Scaffold(
      appBar: AppBar(title: const Text('HQ Uplink')),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex,
        onTap: (index) {
          setState(() {
            _activeIndex = index;
          });
        },
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
            title: Text('Person'),
          ),
        ],
      ),
      body: body,
    );
  }
}
