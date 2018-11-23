import 'package:swlegion/src/models.dart';

final grapplingClaws = Weapon(
  name: 'Grapping Claws',
  dice: {
    AttackDice.red: 3,
  },
  minRange: 0,
  maxRange: 0,
  keywords: [
    Keyword.impact1,
  ],
);
