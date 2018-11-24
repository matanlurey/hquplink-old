import 'package:flutter/material.dart';
import 'package:swlegion/swlegion.dart' as swlegion;

class BrowsePage extends StatelessWidget {
  const BrowsePage();

  @override
  build(_) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (_) => _BrowseCategories(),
        );
      },
    );
  }
}

class _BrowseCategories extends StatelessWidget {
  const _BrowseCategories();

  @override
  build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        color: Theme.of(context).dividerColor,
        tiles: [
          ListTile(
            leading: Icon(Icons.list),
            trailing: Icon(Icons.arrow_right),
            title: Text('Units'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const _BrowseUnits(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.list),
            trailing: Icon(Icons.arrow_right),
            title: Text('Weapons'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const _BrowseWeapons(),
                ),
              );
            },
          ),
        ],
      ).toList(),
    );
  }
}

class _BrowseUnits extends StatelessWidget {
  const _BrowseUnits();

  @override
  build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        color: Theme.of(context).dividerColor,
        tiles: swlegion.units.map((unit) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(unit.name),
          );
        }),
      ).toList(),
    );
  }
}

class _BrowseWeapons extends StatelessWidget {
  const _BrowseWeapons();

  @override
  build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        color: Theme.of(context).dividerColor,
        tiles: swlegion.weapons.map((unit) {
          return ListTile(
            leading: Icon(Icons.cake),
            title: Text(unit.name),
          );
        }),
      ).toList(),
    );
  }
}
