import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:swlegion/swlegion.dart';

/// Represents attack dice.
class MiniAttackDiceDisplay extends StatelessWidget {
  static const double _degrees45InRadians = 45 * math.pi / 180;

  final Map<AttackDice, int> dice;

  const MiniAttackDiceDisplay(this.dice);

  @override
  build(_) {
    var children = <Widget>[];
    if (dice.containsKey(AttackDice.red)) {
      for (var i = 0; i < dice[AttackDice.red]; i++) {
        children.add(DrawMiniAttackDice.red);
      }
    }
    if (dice.containsKey(AttackDice.black)) {
      for (var i = 0; i < dice[AttackDice.black]; i++) {
        children.add(DrawMiniAttackDice.black);
      }
    }
    if (dice.containsKey(AttackDice.white)) {
      for (var i = 0; i < dice[AttackDice.white]; i++) {
        children.add(DrawMiniAttackDice.white);
      }
    }
    children = children.map(
      (child) {
        return Container(
          child: Transform.rotate(
            angle: _degrees45InRadians,
            child: child,
          ),
          padding: const EdgeInsets.only(
            left: 4.0,
            right: 6.0,
            top: 6.0,
            bottom: 4.0,
          ),
        );
      },
    ).toList();
    return Row(children: children);
  }
}

/// Represents a visual for a miniature attack dice.
class DrawMiniAttackDice extends StatelessWidget {
  static const red = DrawMiniAttackDice._(
    backgroundColor: Colors.red,
    borderColor: Colors.white,
  );

  static const black = DrawMiniAttackDice._(
    backgroundColor: Colors.black,
    borderColor: Colors.white,
  );

  static const white = DrawMiniAttackDice._(
    backgroundColor: Colors.white,
    borderColor: Colors.black,
  );

  final Color backgroundColor;
  final Color borderColor;

  const DrawMiniAttackDice._({
    this.backgroundColor,
    this.borderColor,
  });

  @override
  build(_) {
    return SizedBox(
      width: 12,
      height: 12,
      child: CustomPaint(
        painter: _DicePainter(this),
      ),
    );
  }
}

class _DicePainter extends CustomPainter {
  final DrawMiniAttackDice dice;

  const _DicePainter(this.dice);

  @override
  paint(Canvas canvas, Size size) {
    final rect = Rect.fromPoints(
      Offset(0.0, 0.0),
      Offset(size.width, size.height),
    );
    final fill = Paint()
      ..color = dice.backgroundColor
      ..style = PaintingStyle.fill;
    final stroke = Paint()
      ..color = dice.borderColor
      ..style = PaintingStyle.stroke;
    canvas.drawRect(rect, fill);
    canvas.drawRect(rect, stroke);
  }

  @override
  shouldRepaint(CustomPainter oldDelegate) => false;
}
