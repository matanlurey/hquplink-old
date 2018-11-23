import 'package:swlegion/src/data/weapons/a_280_blaster_rifle.dart';
import 'package:swlegion/src/data/weapons/unarmed.dart';
import 'package:swlegion/src/models.dart';

final rebelTroopers = Unit(
  name: 'Rebel Troopers',
  faction: Faction.rebels,
  miniatures: 4,
  rank: Rank.corps,
  type: UnitType.trooper,
  wounds: 1,
  courage: 1,
  defence: DefenceDice.white,
  defenceSurge: true,
  speed: 2,
  points: 40,
  upgradeSlots: {
    UpgradeSlot.personnel: 1,
    UpgradeSlot.heavyWeapon: 1,
    UpgradeSlot.gear: 1,
    UpgradeSlot.grenades: 1,
  },
  weapons: [
    unarmed,
    a280BlasterRifle,
  ],
  keywords: [
    Keyword.nimble,
  ],
);
