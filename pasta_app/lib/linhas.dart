import 'package:flutter/material.dart';
class DrawLinePainter extends CustomPainter {
  final Offset start;
  final Offset end;

  DrawLinePainter(this.start, this.end);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4;

    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(covariant DrawLinePainter old) {
    return old.start != start || old.end != end;
  }
}