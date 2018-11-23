import 'package:swlegion/src/data/weapons/a_300_blaster_rifle.dart';
import 'package:swlegion/src/data/weapons/grappling_claws.dart';
import 'package:swlegion/src/models.dart';

final atRt = Unit(
  name: 'AT-RT',
  faction: Faction.rebels,
  miniatures: 1,
  rank: Rank.support,
  type: UnitType.vehicle,
  wounds: 6,
  resilience: 4,
  defence: DefenceDice.white,
  attackSurge: AttackSurge.critical,
  speed: 2,
  points: 55,
  upgradeSlots: {
    UpgradeSlot.comms: 1,
    UpgradeSlot.hardPoint: 1,
  },
  weapons: [
    grapplingClaws,
    a300BlasterRifle,
  ],
  keywords: [
    Keyword.armor,
    Keyword.climbingVehicle,
    Keyword.expertClimber,
  ],
);
