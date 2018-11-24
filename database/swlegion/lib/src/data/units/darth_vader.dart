import 'package:swlegion/src/data/weapons/vaders_lightsaber.dart';
import 'package:swlegion/src/models.dart';

final darthVader = Unit(
  name: 'Darth Vader',
  subTitle: 'Dark Lord of the Sith',
  faction: Faction.imperials,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 8,
  defence: DefenceDice.red,
  speed: 1,
  points: 200,
  upgradeSlots: {
    UpgradeSlot.force: 3,
  },
  weapons: [
    vadersLightsaber,
  ],
  keywords: [
    Keyword.deflect,
    Keyword.immunePierce,
    Keyword.masterOfTheForce1,
    Keyword.relentless,
  ],
);
