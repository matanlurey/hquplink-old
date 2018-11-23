import 'package:swlegion/src/models.dart';

final anakinsLightsaber = Weapon(
  name: 'Anakin\'s Lightsaber',
  dice: {
    AttackDice.black: 6,
  },
  minRange: 0,
  maxRange: 0,
  keywords: [
    Keyword.impact2,
    Keyword.pierce2,
  ],
);
