import 'package:swlegion/src/models.dart';

final vadersLightsaber = Weapon(
  name: 'Vader\'s Lightsaber',
  dice: {
    AttackDice.red: 6,
  },
  minRange: 0,
  maxRange: 0,
  keywords: [
    Keyword.impact3,
    Keyword.pierce3,
  ],
);
