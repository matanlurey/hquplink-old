import 'package:swlegion/src/data/weapons/anakins_lightsaber.dart';
import 'package:swlegion/src/data/weapons/lukes_dl_44_blaster_pistol.dart';
import 'package:swlegion/src/models.dart';

final lukeSkywalker = Unit(
  name: 'Luke Skywalker',
  subTitle: 'Hero of the Rebellion',
  faction: Faction.rebels,
  miniatures: 1,
  rank: Rank.commander,
  type: UnitType.trooper,
  wounds: 6,
  courage: 3,
  attackSurge: AttackSurge.critical,
  defence: DefenceDice.red,
  speed: 2,
  points: 160,
  upgradeSlots: {
    UpgradeSlot.force: 2,
    UpgradeSlot.gear: 1,
  },
  weapons: [
    anakinsLightsaber,
    lukesDl44BlasterPistol,
  ],
  keywords: [
    Keyword.jump1,
    Keyword.charge,
    Keyword.deflect,
    Keyword.immunePierce,
  ],
);
