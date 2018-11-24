import 'package:flutter/material.dart';
import 'package:swlegion/swlegion.dart' as swlegion;

import '../widgets/dice.dart';

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
            leading: Image.asset(
              unit.faction == swlegion.Faction.imperials
                  ? 'assets/logo_imperials.png'
                  : 'assets/logo_rebels.png',
              width: 24,
              height: 24,
            ),
            title: Text(unit.name),
            subtitle: unit.subTitle != null ? Text(unit.subTitle) : null,
          );
        }),
      ).toList(),
    );
  }
}

class _BrowseWeapons extends StatelessWidget {
  static bool _isMelee(swlegion.Weapon weapon) => weapon.maxRange == 0;

  const _BrowseWeapons();

  @override
  build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        color: Theme.of(context).dividerColor,
        tiles: swlegion.weapons.map((weapon) {
          return ListTile(
            leading: SizedBox(
              // TODO: Add proper range icons instead.
              child: Placeholder(
                color: _isMelee(weapon) ? Colors.red : Colors.blue,
              ),
              width: 24.0,
              height: 24.0,
            ),
            title: Text(weapon.name),
            subtitle: MiniAttackDiceDisplay(weapon.dice.asMap()),
          );
        }),
      ).toList(),
    );
  }
}
