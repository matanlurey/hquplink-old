import 'package:swlegion/src/data/weapons/e_11_blaster_rifle.dart';
import 'package:swlegion/src/data/weapons/unarmed.dart';
import 'package:swlegion/src/models.dart';

final stormtroopers = Unit(
  name: 'Stormtroopers',
  faction: Faction.imperials,
  miniatures: 4,
  rank: Rank.corps,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defence: DefenceDice.red,
  attackSurge: AttackSurge.hit,
  speed: 2,
  points: 44,
  upgradeSlots: {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    unarmed,
    e11BlasterRifle,
  ],
  keywords: [
    Keyword.precise1,
  ],
);
