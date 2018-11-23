import 'package:swlegion/src/data/weapons/ec_17_hold_out_blaster.dart';
import 'package:swlegion/src/data/weapons/ax_20_blaster_cannon.dart';
import 'package:swlegion/src/models.dart';

final $74ZSpeederBikes = Unit(
  name: '74-Z Speeder Bikes',
  faction: Faction.imperials,
  miniatures: 2,
  rank: Rank.support,
  type: UnitType.vehicle,
  wounds: 3,
  defence: DefenceDice.white,
  attackSurge: AttackSurge.hit,
  defenceSurge: true,
  speed: 3,
  points: 90,
  upgradeSlots: {
    UpgradeSlot.comms: 1,
  },
  weapons: [
    ec17HoldOutBlaster,
    ax20BlasterCannon,
  ],
  keywords: [
    Keyword.cover1,
    Keyword.speeder1,
  ],
);
