import 'package:flutter/material.dart';

class Maskot extends StatelessWidget {
  final double size;

  const Maskot({Key? key, this.size = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.transparent,
      child: CustomPaint(painter: MaskotPainter(), size: const Size(570, 420)),
    );
  }
}

class MaskotPainter extends CustomPainter {
  @override
  bool shouldRepaint(_) => true;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();

    // Path number 1

    paint.color = Color(0xff705ea8);
    path = Path();
    path.lineTo(size.width * 0.07, size.height * 0.6);
    path.cubicTo(-0.04, size.height * 0.46, size.width * 0.01, size.height * 0.17, size.width * 0.14, size.height * 0.07);
    path.cubicTo(size.width / 5, size.height * 0.02, size.width / 4, 0, size.width * 0.31, size.height * 0.03);
    path.cubicTo(size.width * 0.39, size.height * 0.07, size.width * 0.35, size.height * 0.24, size.width * 0.43, size.height * 0.31);
    path.cubicTo(size.width * 0.56, size.height * 0.43, size.width * 0.6, size.height * 0.27, size.width * 0.78, size.height * 0.27);
    path.cubicTo(size.width, size.height * 0.27, size.width * 1.06, size.height * 0.51, size.width * 0.98, size.height * 0.78);
    path.cubicTo(size.width * 0.9, size.height * 1.05, size.width * 0.69, size.height * 1.06, size.width * 0.55, size.height * 0.94);
    path.cubicTo(size.width * 0.45, size.height * 0.86, size.width * 0.43, size.height * 0.76, size.width * 0.3, size.height * 0.7);
    path.cubicTo(size.width / 5, size.height * 0.65, size.width * 0.14, size.height * 0.7, size.width * 0.07, size.height * 0.6);
    path.cubicTo(size.width * 0.07, size.height * 0.6, size.width * 0.07, size.height * 0.6, size.width * 0.07, size.height * 0.6);
    canvas.drawPath(path, paint);

    // Path number 2

    paint.color = Color(0xff2d244f);
    path = Path();
    path.lineTo(size.width * 0.22, size.height * 1.06);
    path.cubicTo(size.width * 0.12, size.height * 1.06, size.width * 0.03, size.height * 1.05, size.width * 0.03, size.height * 1.03);
    path.cubicTo(size.width * 0.03, size.height, size.width * 0.12, size.height, size.width * 0.22, size.height);
    path.cubicTo(size.width / 3, size.height, size.width * 0.41, size.height, size.width * 0.41, size.height * 1.03);
    path.cubicTo(size.width * 0.41, size.height * 1.05, size.width / 3, size.height * 1.06, size.width * 0.22, size.height * 1.06);
    path.cubicTo(size.width * 0.22, size.height * 1.06, size.width * 0.22, size.height * 1.06, size.width * 0.22, size.height * 1.06);
    canvas.drawPath(path, paint);

    // Path number 3

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width * 0.23, size.height * 0.44);
    path.cubicTo(size.width * 0.23, size.height * 0.44, size.width * 0.22, size.height * 0.46, size.width * 0.22, size.height * 0.46);
    path.cubicTo(size.width * 0.22, size.height * 0.46, size.width / 5, size.height * 0.46, size.width / 5, size.height * 0.46);
    path.cubicTo(size.width / 5, size.height * 0.46, size.width / 5, size.height * 0.43, size.width / 5, size.height * 0.43);
    path.cubicTo(size.width / 5, size.height * 0.43, size.width * 0.23, size.height * 0.44, size.width * 0.23, size.height * 0.44);
    canvas.drawPath(path, paint);

    // Path number 4

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width / 5, size.height * 0.27);
    path.cubicTo(size.width / 5, size.height * 0.28, size.width / 5, size.height * 0.28, size.width / 5, size.height * 0.28);
    path.cubicTo(size.width * 0.19, size.height * 0.29, size.width * 0.19, size.height * 0.29, size.width * 0.19, size.height * 0.29);
    path.cubicTo(size.width * 0.19, size.height * 0.3, size.width * 0.19, size.height * 0.31, size.width * 0.18, size.height * 0.31);
    path.cubicTo(size.width * 0.18, size.height * 0.32, size.width * 0.18, size.height / 3, size.width * 0.18, size.height / 3);
    path.cubicTo(size.width * 0.17, size.height * 0.34, size.width * 0.17, size.height * 0.34, size.width * 0.17, size.height * 0.34);
    path.cubicTo(size.width * 0.17, size.height * 0.35, size.width * 0.17, size.height * 0.35, size.width * 0.17, size.height * 0.36);
    path.cubicTo(size.width * 0.17, size.height * 0.36, size.width * 0.17, size.height * 0.36, size.width * 0.17, size.height * 0.36);
    path.cubicTo(size.width * 0.17, size.height * 0.36, size.width * 0.17, size.height * 0.36, size.width * 0.17, size.height * 0.36);
    path.cubicTo(size.width * 0.17, size.height * 0.36, size.width * 0.17, size.height * 0.36, size.width * 0.17, size.height * 0.36);
    path.cubicTo(size.width * 0.17, size.height * 0.37, size.width * 0.17, size.height * 0.37, size.width * 0.17, size.height * 0.37);
    path.cubicTo(size.width * 0.17, size.height * 0.38, size.width * 0.17, size.height * 0.38, size.width * 0.17, size.height * 0.39);
    path.cubicTo(size.width * 0.17, size.height * 0.39, size.width * 0.17, size.height * 0.4, size.width * 0.18, size.height * 0.41);
    path.cubicTo(size.width * 0.18, size.height * 0.42, size.width * 0.19, size.height * 0.43, size.width / 5, size.height * 0.44);
    path.cubicTo(size.width / 5, size.height * 0.44, size.width / 5, size.height * 0.43, size.width / 5, size.height * 0.43);
    path.cubicTo(size.width / 5, size.height * 0.42, size.width / 5, size.height * 0.41, size.width * 0.19, size.height * 0.4);
    path.cubicTo(size.width * 0.19, size.height * 0.39, size.width * 0.19, size.height * 0.38, size.width * 0.19, size.height * 0.38);
    path.cubicTo(size.width * 0.19, size.height * 0.38, size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37);
    path.cubicTo(size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37);
    path.cubicTo(size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37);
    path.cubicTo(size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37, size.width * 0.19, size.height * 0.37);
    path.cubicTo(size.width * 0.19, size.height * 0.35, size.width / 5, size.height * 0.34, size.width / 5, size.height / 3);
    path.cubicTo(size.width / 5, size.height * 0.32, size.width / 5, size.height * 0.32, size.width / 5, size.height * 0.31);
    path.cubicTo(size.width / 5, size.height * 0.31, size.width * 0.22, size.height * 0.3, size.width * 0.22, size.height * 0.3);
    path.cubicTo(size.width * 0.22, size.height * 0.3, size.width / 5, size.height * 0.27, size.width / 5, size.height * 0.27);
    canvas.drawPath(path, paint);

    // Path number 5

    paint.color = Color(0xff407bff);
    path = Path();
    path.lineTo(size.width / 5, size.height * 0.26);
    path.cubicTo(size.width * 0.19, size.height * 0.26, size.width * 0.18, size.height * 0.32, size.width * 0.18, size.height * 0.32);
    path.cubicTo(size.width * 0.18, size.height * 0.32, size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height / 3, size.width * 0.22, size.height * 0.32, size.width * 0.22, size.height * 0.3);
    path.cubicTo(size.width * 0.23, size.height * 0.28, size.width * 0.22, size.height * 0.26, size.width / 5, size.height * 0.26);
    path.cubicTo(size.width / 5, size.height * 0.26, size.width / 5, size.height * 0.26, size.width / 5, size.height * 0.26);
    canvas.drawPath(path, paint);

    // Path number 6

    paint.color = Color(0xfff3f3f3);
    path = Path();
    path.lineTo(size.width / 5, size.height * 0.26);
    path.cubicTo(size.width * 0.19, size.height * 0.26, size.width * 0.18, size.height * 0.32, size.width * 0.18, size.height * 0.32);
    path.cubicTo(size.width * 0.18, size.height * 0.32, size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height / 3, size.width * 0.22, size.height * 0.32, size.width * 0.22, size.height * 0.3);
    path.cubicTo(size.width * 0.23, size.height * 0.28, size.width * 0.22, size.height * 0.26, size.width / 5, size.height * 0.26);
    path.cubicTo(size.width / 5, size.height * 0.26, size.width / 5, size.height * 0.26, size.width / 5, size.height * 0.26);
    canvas.drawPath(path, paint);

    // Path number 7

    paint.color = Color(0xff407bff);
    path = Path();
    path.lineTo(size.width * 0.22, size.height * 0.3);
    path.cubicTo(size.width * 0.22, size.height * 0.3, size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.34, size.width * 0.22, size.height * 0.32);
    path.cubicTo(size.width * 0.22, size.height * 0.32, size.width * 0.22, size.height * 0.3, size.width * 0.22, size.height * 0.3);
    canvas.drawPath(path, paint);

    // Path number 8

    paint.color = Color(0xffffffff);
    path = Path();
    path.lineTo(size.width * 0.22, size.height * 0.3);
    path.cubicTo(size.width * 0.22, size.height * 0.3, size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.35);
    path.cubicTo(size.width / 5, size.height * 0.35, size.width / 5, size.height * 0.34, size.width * 0.22, size.height * 0.32);
    path.cubicTo(size.width * 0.22, size.height * 0.32, size.width * 0.22, size.height * 0.3, size.width * 0.22, size.height * 0.3);
    canvas.drawPath(path, paint);

    // Path number 9

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width / 4, size.height);
    path.cubicTo(size.width / 4, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width / 4, size.height * 0.95, size.width / 4, size.height * 0.95);
    path.cubicTo(size.width / 4, size.height * 0.95, size.width / 4, size.height, size.width / 4, size.height);
    canvas.drawPath(path, paint);

    // Path number 10

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width * 0.16, size.height);
    path.cubicTo(size.width * 0.16, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.95);
    path.cubicTo(size.width * 0.18, size.height * 0.95, size.width * 0.17, size.height * 0.95, size.width * 0.17, size.height * 0.95);
    path.cubicTo(size.width * 0.17, size.height * 0.95, size.width * 0.16, size.height, size.width * 0.16, size.height);
    canvas.drawPath(path, paint);

    // Path number 11

    paint.color = Color(0xff8a4743);
    path = Path();
    path.lineTo(size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.98, size.width * 0.27, size.height * 0.98);
    path.cubicTo(size.width * 0.27, size.height * 0.98, size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.98);
    path.cubicTo(size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.95, size.width / 4, size.height * 0.95);
    path.cubicTo(size.width / 4, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    canvas.drawPath(path, paint);

    // Path number 12

    paint.color = Color(0xff8a4743);
    path = Path();
    path.lineTo(size.width * 0.17, size.height * 0.95);
    path.cubicTo(size.width * 0.17, size.height * 0.95, size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.95);
    path.cubicTo(size.width * 0.18, size.height * 0.95, size.width * 0.18, size.height * 0.98, size.width * 0.18, size.height * 0.98);
    path.cubicTo(size.width * 0.18, size.height * 0.98, size.width * 0.17, size.height * 0.98, size.width * 0.17, size.height * 0.98);
    path.cubicTo(size.width * 0.17, size.height * 0.98, size.width * 0.17, size.height * 0.95, size.width * 0.17, size.height * 0.95);
    canvas.drawPath(path, paint);

    // Path number 13

    paint.color = Color(0xff8e29a3);
    path = Path();
    path.lineTo(size.width * 0.26, size.height * 0.45);
    path.cubicTo(size.width * 0.26, size.height * 0.45, size.width / 4, size.height * 0.62, size.width * 0.24, size.height * 0.68);
    path.cubicTo(size.width * 0.23, size.height * 0.75, size.width * 0.19, size.height * 0.98, size.width * 0.19, size.height * 0.98);
    path.cubicTo(size.width * 0.19, size.height * 0.98, size.width * 0.16, size.height * 0.98, size.width * 0.16, size.height * 0.98);
    path.cubicTo(size.width * 0.16, size.height * 0.98, size.width * 0.19, size.height * 0.75, size.width * 0.19, size.height * 0.69);
    path.cubicTo(size.width / 5, size.height * 0.61, size.width / 5, size.height * 0.45, size.width / 5, size.height * 0.45);
    path.cubicTo(size.width / 5, size.height * 0.45, size.width * 0.26, size.height * 0.45, size.width * 0.26, size.height * 0.45);
    canvas.drawPath(path, paint);

    // Path number 14

    paint.color = Color(0xff621c71);
    path = Path();
    path.lineTo(size.width * 0.26, size.height * 0.45);
    path.cubicTo(size.width * 0.26, size.height * 0.45, size.width / 4, size.height * 0.62, size.width * 0.24, size.height * 0.68);
    path.cubicTo(size.width * 0.23, size.height * 0.75, size.width * 0.19, size.height * 0.98, size.width * 0.19, size.height * 0.98);
    path.cubicTo(size.width * 0.19, size.height * 0.98, size.width * 0.16, size.height * 0.98, size.width * 0.16, size.height * 0.98);
    path.cubicTo(size.width * 0.16, size.height * 0.98, size.width * 0.19, size.height * 0.75, size.width * 0.19, size.height * 0.69);
    path.cubicTo(size.width / 5, size.height * 0.61, size.width / 5, size.height * 0.45, size.width / 5, size.height * 0.45);
    path.cubicTo(size.width / 5, size.height * 0.45, size.width * 0.26, size.height * 0.45, size.width * 0.26, size.height * 0.45);
    canvas.drawPath(path, paint);

    // Path number 15

    paint.color = Color(0xff000000);
    path = Path();
    path.lineTo(size.width / 4, size.height * 0.51);
    path.cubicTo(size.width * 0.23, size.height * 0.51, size.width * 0.23, size.height * 0.62, size.width * 0.24, size.height * 0.68);
    path.cubicTo(size.width * 0.24, size.height * 0.64, size.width / 4, size.height * 0.56, size.width * 0.26, size.height * 0.51);
    path.cubicTo(size.width * 0.26, size.height * 0.51, size.width / 4, size.height * 0.51, size.width / 4, size.height * 0.51);
    path.cubicTo(size.width / 4, size.height * 0.51, size.width / 4, size.height * 0.51, size.width / 4, size.height * 0.51);
    canvas.drawPath(path, paint);

    // Path number 16

    paint.color = Color(0xff8e29a3);
    path = Path();
    path.lineTo(size.width * 0.29, size.height * 0.45);
    path.cubicTo(size.width * 0.29, size.height * 0.45, size.width * 0.29, size.height * 0.61, size.width * 0.29, size.height * 0.68);
    path.cubicTo(size.width * 0.29, size.height * 0.75, size.width * 0.27, size.height * 0.98, size.width * 0.27, size.height * 0.98);
    path.cubicTo(size.width * 0.27, size.height * 0.98, size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.98);
    path.cubicTo(size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.75, size.width / 4, size.height * 0.68);
    path.cubicTo(size.width / 4, size.height * 0.61, size.width * 0.24, size.height * 0.45, size.width * 0.24, size.height * 0.45);
    path.cubicTo(size.width * 0.24, size.height * 0.45, size.width * 0.29, size.height * 0.45, size.width * 0.29, size.height * 0.45);
    canvas.drawPath(path, paint);

    // Path number 17

    paint.color = Color(0xff621c71);
    path = Path();
    path.lineTo(size.width * 0.29, size.height * 0.45);
    path.cubicTo(size.width * 0.29, size.height * 0.45, size.width * 0.29, size.height * 0.61, size.width * 0.29, size.height * 0.68);
    path.cubicTo(size.width * 0.29, size.height * 0.75, size.width * 0.27, size.height * 0.98, size.width * 0.27, size.height * 0.98);
    path.cubicTo(size.width * 0.27, size.height * 0.98, size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.98);
    path.cubicTo(size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.75, size.width / 4, size.height * 0.68);
    path.cubicTo(size.width / 4, size.height * 0.61, size.width * 0.24, size.height * 0.45, size.width * 0.24, size.height * 0.45);
    path.cubicTo(size.width * 0.24, size.height * 0.45, size.width * 0.29, size.height * 0.45, size.width * 0.29, size.height * 0.45);
    canvas.drawPath(path, paint);

    // Path number 18

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width / 5, size.height * 0.43);
    path.cubicTo(size.width / 5, size.height * 0.43, size.width / 5, size.height * 0.43, size.width / 5, size.height * 0.43);
    path.cubicTo(size.width / 5, size.height * 0.43, size.width / 5, size.height * 0.46, size.width / 5, size.height * 0.46);
    path.cubicTo(size.width / 5, size.height * 0.46, size.width / 5, size.height * 0.45, size.width / 5, size.height * 0.44);
    path.cubicTo(size.width / 5, size.height * 0.44, size.width / 5, size.height * 0.43, size.width / 5, size.height * 0.43);
    canvas.drawPath(path, paint);

    // Path number 19

    paint.color = Color(0xff263238);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.18);
    path.cubicTo(size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18);
    path.cubicTo(size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18);
    path.cubicTo(size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18);
    path.cubicTo(size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18);
    path.cubicTo(size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 20

    paint.color = Color(0xff892b29);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.18);
    path.cubicTo(size.width * 0.28, size.height * 0.19, size.width * 0.28, size.height * 0.19, size.width * 0.28, size.height / 5);
    path.cubicTo(size.width * 0.28, size.height / 5, size.width * 0.28, size.height / 5, size.width * 0.28, size.height / 5);
    path.cubicTo(size.width * 0.28, size.height / 5, size.width * 0.28, size.height / 5, size.width * 0.28, size.height / 5);
    path.cubicTo(size.width * 0.28, size.height / 5, size.width * 0.28, size.height * 0.18, size.width * 0.28, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 21

    paint.color = Color(0xff263238);
    path = Path();
    path.lineTo(size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17, size.width * 0.28, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    path.cubicTo(size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17, size.width * 0.27, size.height * 0.17);
    canvas.drawPath(path, paint);

    // Path number 22

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width * 0.24, size.height / 5);
    path.cubicTo(size.width * 0.24, size.height * 0.22, size.width * 0.24, size.height * 0.24, size.width * 0.23, size.height * 0.26);
    path.cubicTo(size.width * 0.23, size.height * 0.26, size.width * 0.24, size.height * 0.27, size.width * 0.26, size.height * 0.27);
    path.cubicTo(size.width * 0.28, size.height * 0.27, size.width * 0.27, size.height * 0.26, size.width * 0.27, size.height * 0.26);
    path.cubicTo(size.width * 0.26, size.height / 4, size.width * 0.26, size.height * 0.24, size.width * 0.26, size.height * 0.23);
    path.cubicTo(size.width * 0.26, size.height * 0.23, size.width * 0.24, size.height / 5, size.width * 0.24, size.height / 5);
    canvas.drawPath(path, paint);

    // Path number 23

    paint.color = Color(0xff8d3b82);
    path = Path();
    path.lineTo(size.width * 0.23, size.height * 0.26);
    path.cubicTo(size.width * 0.23, size.height * 0.26, size.width * 0.23, size.height / 4, size.width * 0.23, size.height / 4);
    path.cubicTo(size.width * 0.24, size.height / 4, size.width * 0.26, size.height * 0.24, size.width * 0.27, size.height / 4);
    path.cubicTo(size.width * 0.27, size.height / 4, size.width * 0.27, size.height / 4, size.width * 0.27, size.height / 4);
    path.cubicTo(size.width * 0.27, size.height / 4, size.width * 0.27, size.height / 4, size.width * 0.27, size.height / 4);
    path.cubicTo(size.width * 0.27, size.height / 4, size.width * 0.27, size.height * 0.26, size.width * 0.27, size.height * 0.26);
    path.cubicTo(size.width * 0.27, size.height * 0.26, size.width * 0.27, size.height * 0.26, size.width * 0.27, size.height * 0.26);
    path.cubicTo(size.width * 0.27, size.height * 0.26, size.width * 0.23, size.height * 0.26, size.width * 0.23, size.height * 0.26);
    canvas.drawPath(path, paint);

    // Path number 24

    paint.color = Color(0xffd690d8);
    path = Path();
    path.lineTo(size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.lineTo(size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.19, size.height, size.width * 0.19, size.height);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    canvas.drawPath(path, paint);

    // Path number 25

    paint.color = Color(0xffd690d8);
    path = Path();
    path.lineTo(size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.lineTo(size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    canvas.drawPath(path, paint);

    // Path number 26

    paint.color = Color(0xffd690d8);
    path = Path();
    path.lineTo(size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.lineTo(size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    canvas.drawPath(path, paint);

    // Path number 27

    paint.color = Color(0xffd690d8);
    path = Path();
    path.lineTo(size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.28, size.height, size.width * 0.28, size.height);
    path.cubicTo(size.width * 0.28, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.lineTo(size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    canvas.drawPath(path, paint);

    // Path number 28

    paint.color = Color(0xff263238);
    path = Path();
    path.lineTo(size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.16, size.height, size.width * 0.16, size.height);
    path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height, size.width * 0.16, size.height);
    path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height, size.width * 0.16, size.height);
    path.cubicTo(size.width * 0.16, size.height, size.width * 0.16, size.height * 1.02, size.width * 0.16, size.height * 1.02);
    path.cubicTo(size.width * 0.16, size.height * 1.02, size.width * 0.16, size.height * 1.02, size.width * 0.16, size.height * 1.02);
    path.cubicTo(size.width * 0.16, size.height * 1.02, size.width * 0.16, size.height * 1.03, size.width * 0.16, size.height * 1.03);
    path.cubicTo(size.width * 0.16, size.height * 1.03, size.width * 0.16, size.height * 1.03, size.width * 0.16, size.height * 1.03);
    path.cubicTo(size.width * 0.16, size.height * 1.03, size.width * 0.16, size.height * 1.03, size.width * 0.16, size.height * 1.03);
    path.cubicTo(size.width * 0.16, size.height * 1.03, size.width * 0.17, size.height * 1.03, size.width * 0.17, size.height * 1.03);
    path.cubicTo(size.width * 0.18, size.height * 1.03, size.width * 0.19, size.height * 1.03, size.width / 5, size.height * 1.03);
    path.cubicTo(size.width / 5, size.height * 1.03, size.width / 5, size.height * 1.02, size.width / 5, size.height * 1.02);
    path.cubicTo(size.width * 0.19, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    path.cubicTo(size.width * 0.18, size.height, size.width * 0.18, size.height, size.width * 0.18, size.height);
    canvas.drawPath(path, paint);

    // Path number 29

    paint.color = Color(0xff263238);
    path = Path();
    path.lineTo(size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width / 4, size.height, size.width / 4, size.height);
    path.cubicTo(size.width / 4, size.height, size.width / 4, size.height, size.width / 4, size.height);
    path.cubicTo(size.width / 4, size.height, size.width / 4, size.height, size.width / 4, size.height);
    path.cubicTo(size.width / 4, size.height, size.width / 4, size.height * 1.02, size.width / 4, size.height * 1.02);
    path.cubicTo(size.width / 4, size.height * 1.02, size.width / 4, size.height * 1.02, size.width / 4, size.height * 1.02);
    path.cubicTo(size.width / 4, size.height * 1.02, size.width / 4, size.height * 1.03, size.width / 4, size.height * 1.03);
    path.cubicTo(size.width / 4, size.height * 1.03, size.width / 4, size.height * 1.03, size.width / 4, size.height * 1.03);
    path.cubicTo(size.width / 4, size.height * 1.03, size.width / 4, size.height * 1.03, size.width / 4, size.height * 1.03);
    path.cubicTo(size.width * 0.26, size.height * 1.03, size.width * 0.26, size.height * 1.03, size.width * 0.27, size.height * 1.03);
    path.cubicTo(size.width * 0.28, size.height * 1.03, size.width * 0.29, size.height * 1.03, size.width * 0.3, size.height * 1.03);
    path.cubicTo(size.width * 0.3, size.height * 1.03, size.width * 0.31, size.height * 1.02, size.width * 0.3, size.height * 1.02);
    path.cubicTo(size.width * 0.29, size.height, size.width * 0.28, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    path.cubicTo(size.width * 0.27, size.height, size.width * 0.27, size.height, size.width * 0.27, size.height);
    canvas.drawPath(path, paint);

    // Path number 30

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width * 0.29, size.height * 0.3);
    path.cubicTo(size.width * 0.3, size.height * 0.32, size.width * 0.3, size.height / 3, size.width * 0.31, size.height * 0.34);
    path.cubicTo(size.width * 0.32, size.height * 0.35, size.width * 0.32, size.height * 0.36, size.width / 3, size.height * 0.38);
    path.cubicTo(size.width / 3, size.height * 0.38, size.width / 3, size.height * 0.38, size.width / 3, size.height * 0.38);
    path.cubicTo(size.width / 3, size.height * 0.38, size.width / 3, size.height * 0.38, size.width / 3, size.height * 0.38);
    path.cubicTo(size.width / 3, size.height * 0.38, size.width / 3, size.height * 0.38, size.width / 3, size.height * 0.38);
    path.cubicTo(size.width / 3, size.height * 0.38, size.width * 0.34, size.height * 0.38, size.width * 0.34, size.height * 0.38);
    path.cubicTo(size.width * 0.34, size.height * 0.38, size.width * 0.34, size.height * 0.38, size.width * 0.34, size.height * 0.39);
    path.cubicTo(size.width * 0.34, size.height * 0.39, size.width * 0.35, size.height * 0.39, size.width * 0.35, size.height * 0.39);
    path.cubicTo(size.width * 0.36, size.height * 0.39, size.width * 0.36, size.height * 0.39, size.width * 0.37, size.height * 0.39);
    path.cubicTo(size.width * 0.38, size.height * 0.38, size.width * 0.39, size.height * 0.38, size.width * 0.4, size.height * 0.37);
    path.cubicTo(size.width * 0.4, size.height * 0.37, size.width * 0.39, size.height * 0.36, size.width * 0.39, size.height * 0.36);
    path.cubicTo(size.width * 0.39, size.height * 0.36, size.width * 0.38, size.height * 0.36, size.width * 0.37, size.height * 0.36);
    path.cubicTo(size.width * 0.36, size.height * 0.36, size.width * 0.36, size.height * 0.36, size.width * 0.35, size.height * 0.36);
    path.cubicTo(size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36);
    path.cubicTo(size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36);
    path.cubicTo(size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36);
    path.cubicTo(size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.36);
    path.cubicTo(size.width * 0.35, size.height * 0.36, size.width * 0.35, size.height * 0.35, size.width * 0.35, size.height * 0.35);
    path.cubicTo(size.width * 0.34, size.height * 0.34, size.width / 3, size.height / 3, size.width / 3, size.height * 0.32);
    path.cubicTo(size.width * 0.32, size.height * 0.31, size.width * 0.31, size.height * 0.3, size.width * 0.31, size.height * 0.29);
    path.cubicTo(size.width * 0.31, size.height * 0.29, size.width * 0.29, size.height * 0.3, size.width * 0.29, size.height * 0.3);
    canvas.drawPath(path, paint);

    // Path number 31

    paint.color = Color(0xffbed3fc);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.31);
    path.cubicTo(size.width * 0.28, size.height / 3, size.width * 0.29, size.height * 0.34, size.width * 0.3, size.height * 0.36);
    path.cubicTo(size.width * 0.3, size.height * 0.35, size.width * 0.3, size.height * 0.34, size.width * 0.3, size.height / 3);
    path.cubicTo(size.width * 0.3, size.height / 3, size.width * 0.28, size.height * 0.31, size.width * 0.28, size.height * 0.31);
    canvas.drawPath(path, paint);

    // Path number 32

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width * 0.24, size.height * 0.18);
    path.cubicTo(size.width * 0.24, size.height / 5, size.width * 0.24, size.height / 5, size.width * 0.24, size.height * 0.22);
    path.cubicTo(size.width * 0.26, size.height * 0.24, size.width * 0.27, size.height * 0.23, size.width * 0.28, size.height / 5);
    path.cubicTo(size.width * 0.28, size.height * 0.19, size.width * 0.28, size.height * 0.15, size.width * 0.26, size.height * 0.15);
    path.cubicTo(size.width * 0.26, size.height * 0.14, size.width * 0.26, size.height * 0.14, size.width / 4, size.height * 0.14);
    path.cubicTo(size.width / 4, size.height * 0.14, size.width / 4, size.height * 0.15, size.width * 0.24, size.height * 0.15);
    path.cubicTo(size.width * 0.24, size.height * 0.15, size.width * 0.24, size.height * 0.16, size.width * 0.24, size.height * 0.16);
    path.cubicTo(size.width * 0.24, size.height * 0.17, size.width * 0.24, size.height * 0.17, size.width * 0.24, size.height * 0.18);
    path.cubicTo(size.width * 0.24, size.height * 0.18, size.width * 0.24, size.height * 0.18, size.width * 0.24, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 33

    paint.color = Color(0xff263238);
    path = Path();
    path.lineTo(size.width * 0.27, size.height * 0.16);
    path.cubicTo(size.width * 0.27, size.height * 0.19, size.width * 0.26, size.height * 0.22, size.width * 0.24, size.height * 0.22);
    path.cubicTo(size.width * 0.23, size.height / 5, size.width * 0.22, size.height * 0.18, size.width * 0.22, size.height * 0.17);
    path.cubicTo(size.width * 0.22, size.height * 0.15, size.width * 0.22, size.height * 0.15, size.width * 0.23, size.height * 0.15);
    path.cubicTo(size.width * 0.22, size.height * 0.14, size.width * 0.22, size.height * 0.13, size.width * 0.23, size.height * 0.13);
    path.cubicTo(size.width * 0.24, size.height * 0.12, size.width * 0.26, size.height * 0.12, size.width / 4, size.height * 0.11);
    path.cubicTo(size.width * 0.27, size.height * 0.11, size.width * 0.27, size.height * 0.12, size.width * 0.27, size.height * 0.13);
    path.cubicTo(size.width * 0.28, size.height * 0.13, size.width * 0.28, size.height * 0.12, size.width * 0.28, size.height * 0.12);
    path.cubicTo(size.width * 0.29, size.height * 0.12, size.width * 0.3, size.height * 0.16, size.width * 0.27, size.height * 0.16);
    path.cubicTo(size.width * 0.27, size.height * 0.16, size.width * 0.27, size.height * 0.16, size.width * 0.27, size.height * 0.16);
    canvas.drawPath(path, paint);

    // Path number 34

    paint.color = Color(0xff9f5b53);
    path = Path();
    path.lineTo(size.width * 0.26, size.height * 0.18);
    path.cubicTo(size.width * 0.26, size.height * 0.19, size.width * 0.26, size.height * 0.19, size.width * 0.26, size.height / 5);
    path.cubicTo(size.width * 0.27, size.height / 5, size.width * 0.27, size.height / 5, size.width * 0.27, size.height * 0.19);
    path.cubicTo(size.width * 0.27, size.height * 0.18, size.width * 0.27, size.height * 0.17, size.width * 0.26, size.height * 0.17);
    path.cubicTo(size.width * 0.26, size.height * 0.17, size.width * 0.26, size.height * 0.18, size.width * 0.26, size.height * 0.18);
    path.cubicTo(size.width * 0.26, size.height * 0.18, size.width * 0.26, size.height * 0.18, size.width * 0.26, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 35

    paint.color = Color(0xff263238);
    path = Path();
    path.lineTo(size.width / 5, size.height * 0.15);
    path.cubicTo(size.width * 0.22, size.height * 0.15, size.width * 0.22, size.height * 0.15, size.width * 0.22, size.height * 0.15);
    path.cubicTo(size.width * 0.22, size.height * 0.15, size.width * 0.23, size.height * 0.15, size.width * 0.23, size.height * 0.15);
    path.cubicTo(size.width * 0.23, size.height * 0.15, size.width * 0.22, size.height * 0.13, size.width / 5, size.height * 0.15);
    path.cubicTo(size.width / 5, size.height * 0.15, size.width / 5, size.height * 0.15, size.width / 5, size.height * 0.15);
    canvas.drawPath(path, paint);

    // Path number 36

    paint.color = Color(0xffd690d8);
    path = Path();
    path.lineTo(size.width * 0.19, size.height * 0.96);
    path.cubicTo(size.width * 0.19, size.height * 0.96, size.width * 0.19, size.height * 0.98, size.width * 0.19, size.height * 0.98);
    path.cubicTo(size.width * 0.19, size.height * 0.98, size.width * 0.16, size.height * 0.98, size.width * 0.16, size.height * 0.98);
    path.cubicTo(size.width * 0.16, size.height * 0.98, size.width * 0.16, size.height * 0.96, size.width * 0.16, size.height * 0.96);
    path.cubicTo(size.width * 0.16, size.height * 0.96, size.width * 0.19, size.height * 0.96, size.width * 0.19, size.height * 0.96);
    canvas.drawPath(path, paint);

    // Path number 37

    paint.color = Color(0xffd690d8);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.96);
    path.cubicTo(size.width * 0.28, size.height * 0.96, size.width * 0.28, size.height * 0.98, size.width * 0.28, size.height * 0.98);
    path.cubicTo(size.width * 0.28, size.height * 0.98, size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.98);
    path.cubicTo(size.width / 4, size.height * 0.98, size.width / 4, size.height * 0.96, size.width / 4, size.height * 0.96);
    path.cubicTo(size.width / 4, size.height * 0.96, size.width * 0.28, size.height * 0.96, size.width * 0.28, size.height * 0.96);
    canvas.drawPath(path, paint);

    // Path number 38

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.89, size.width * 0.28, size.height * 0.73, size.width * 0.29, size.height * 0.68);
    path.cubicTo(size.width * 0.29, size.height * 0.62, size.width * 0.29, size.height / 2, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height / 2, size.width * 0.29, size.height * 0.62, size.width * 0.29, size.height * 0.68);
    path.cubicTo(size.width * 0.28, size.height * 0.73, size.width * 0.27, size.height * 0.89, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    canvas.drawPath(path, paint);

    // Path number 39

    paint.color = Color(0xff000000);
    path = Path();
    path.lineTo(size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.89, size.width * 0.28, size.height * 0.73, size.width * 0.29, size.height * 0.68);
    path.cubicTo(size.width * 0.29, size.height * 0.62, size.width * 0.29, size.height / 2, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46, size.width * 0.29, size.height * 0.46);
    path.cubicTo(size.width * 0.29, size.height / 2, size.width * 0.29, size.height * 0.62, size.width * 0.29, size.height * 0.68);
    path.cubicTo(size.width * 0.28, size.height * 0.73, size.width * 0.27, size.height * 0.89, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    path.cubicTo(size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95, size.width * 0.27, size.height * 0.95);
    canvas.drawPath(path, paint);

    // Path number 40

    paint.color = Color(0xff407bff);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.28);
    path.cubicTo(size.width * 0.27, size.height * 0.3, size.width * 0.3, size.height * 0.35, size.width * 0.3, size.height * 0.35);
    path.cubicTo(size.width * 0.3, size.height * 0.35, size.width / 3, size.height * 0.32, size.width / 3, size.height * 0.32);
    path.cubicTo(size.width / 3, size.height * 0.32, size.width * 0.32, size.height * 0.3, size.width * 0.31, size.height * 0.28);
    path.cubicTo(size.width * 0.29, size.height / 4, size.width * 0.28, size.height * 0.26, size.width * 0.28, size.height * 0.28);
    path.cubicTo(size.width * 0.28, size.height * 0.28, size.width * 0.28, size.height * 0.28, size.width * 0.28, size.height * 0.28);
    canvas.drawPath(path, paint);

    // Path number 41

    paint.color = Color(0xfff3f3f3);
    path = Path();
    path.lineTo(size.width * 0.28, size.height * 0.28);
    path.cubicTo(size.width * 0.27, size.height * 0.3, size.width * 0.3, size.height * 0.35, size.width * 0.3, size.height * 0.35);
    path.cubicTo(size.width * 0.3, size.height * 0.35, size.width / 3, size.height * 0.32, size.width / 3, size.height * 0.32);
    path.cubicTo(size.width / 3, size.height * 0.32, size.width * 0.32, size.height * 0.3, size.width * 0.31, size.height * 0.28);
    path.cubicTo(size.width * 0.29, size.height / 4, size.width * 0.28, size.height * 0.26, size.width * 0.28, size.height * 0.28);
    path.cubicTo(size.width * 0.28, size.height * 0.28, size.width * 0.28, size.height * 0.28, size.width * 0.28, size.height * 0.28);
    canvas.drawPath(path, paint);

    // Path number 42

    paint.color = Color(0xff407bff);
    path = Path();
    path.lineTo(size.width * 0.29, size.height * 0.26);
    path.cubicTo(size.width * 0.29, size.height * 0.26, size.width * 0.31, size.height * 0.29, size.width * 0.29, size.height * 0.45);
    path.cubicTo(size.width * 0.29, size.height * 0.45, size.width / 5, size.height * 0.45, size.width / 5, size.height * 0.45);
    path.cubicTo(size.width / 5, size.height * 0.43, size.width * 0.22, size.height * 0.34, size.width / 5, size.height * 0.26);
    path.cubicTo(size.width * 0.22, size.height * 0.26, size.width * 0.22, size.height * 0.26, size.width * 0.23, size.height * 0.26);
    path.cubicTo(size.width / 4, size.height / 4, size.width * 0.26, size.height / 4, size.width * 0.27, size.height * 0.26);
    path.cubicTo(size.width * 0.28, size.height * 0.26, size.width * 0.28, size.height * 0.26, size.width * 0.29, size.height * 0.26);
    path.cubicTo(size.width * 0.29, size.height * 0.26, size.width * 0.29, size.height * 0.26, size.width * 0.29, size.height * 0.26);
    canvas.drawPath(path, paint);

    // Path number 43

    paint.color = Color(0xfff3f3f3);
    path = Path();
    path.lineTo(size.width * 0.29, size.height * 0.26);
    path.cubicTo(size.width * 0.29, size.height * 0.26, size.width * 0.31, size.height * 0.29, size.width * 0.29, size.height * 0.45);
    path.cubicTo(size.width * 0.29, size.height * 0.45, size.width / 5, size.height * 0.45, size.width / 5, size.height * 0.45);
    path.cubicTo(size.width / 5, size.height * 0.43, size.width * 0.22, size.height * 0.34, size.width / 5, size.height * 0.26);
    path.cubicTo(size.width * 0.22, size.height * 0.26, size.width * 0.22, size.height * 0.26, size.width * 0.23, size.height * 0.26);
    path.cubicTo(size.width / 4, size.height / 4, size.width * 0.26, size.height / 4, size.width * 0.27, size.height * 0.26);
    path.cubicTo(size.width * 0.28, size.height * 0.26, size.width * 0.28, size.height * 0.26, size.width * 0.29, size.height * 0.26);
    path.cubicTo(size.width * 0.29, size.height * 0.26, size.width * 0.29, size.height * 0.26, size.width * 0.29, size.height * 0.26);
    canvas.drawPath(path, paint);

    // Path number 44

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.4, size.height * 0.35);
    path.cubicTo(size.width * 0.4, size.height * 0.35, size.width * 0.41, size.height / 3, size.width * 0.41, size.height / 3);
    path.cubicTo(size.width * 0.41, size.height / 3, size.width * 0.43, size.height * 0.35, size.width * 0.43, size.height * 0.35);
    path.cubicTo(size.width * 0.43, size.height * 0.35, size.width * 0.42, size.height * 0.37, size.width * 0.41, size.height * 0.37);
    path.cubicTo(size.width * 0.41, size.height * 0.37, size.width * 0.4, size.height * 0.35, size.width * 0.4, size.height * 0.35);
    canvas.drawPath(path, paint);

    // Path number 45

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.43, size.height * 0.32);
    path.cubicTo(size.width * 0.43, size.height * 0.32, size.width * 0.43, size.height * 0.34, size.width * 0.43, size.height * 0.34);
    path.cubicTo(size.width * 0.43, size.height * 0.34, size.width * 0.43, size.height * 0.35, size.width * 0.43, size.height * 0.35);
    path.cubicTo(size.width * 0.43, size.height * 0.35, size.width * 0.41, size.height / 3, size.width * 0.41, size.height / 3);
    path.cubicTo(size.width * 0.41, size.height / 3, size.width * 0.43, size.height * 0.32, size.width * 0.43, size.height * 0.32);
    canvas.drawPath(path, paint);

    // Path number 46

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.58, size.height * 0.29);
    path.cubicTo(size.width * 0.58, size.height * 0.29, size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.28);
    path.cubicTo(size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.28, size.width * 0.56, size.height * 0.28);
    path.cubicTo(size.width * 0.56, size.height * 0.28, size.width * 0.56, size.height * 0.28, size.width * 0.56, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27);
    path.cubicTo(size.width * 0.56, size.height * 0.27, size.width * 0.57, size.height * 0.26, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.57, size.height / 4, size.width * 0.57, size.height * 0.24, size.width * 0.57, size.height * 0.23);
    path.cubicTo(size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.22);
    path.cubicTo(size.width * 0.56, size.height * 0.22, size.width * 0.56, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.55, size.height / 5, size.width * 0.55, size.height / 5);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.56, size.height / 5, size.width * 0.56, size.height / 5);
    path.cubicTo(size.width * 0.56, size.height * 0.19, size.width * 0.56, size.height * 0.18, size.width * 0.56, size.height * 0.17);
    path.cubicTo(size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.17);
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.58, size.height * 0.11, size.width * 0.58, size.height * 0.11);
    path.cubicTo(size.width * 0.58, size.height * 0.11, size.width * 0.59, size.height * 0.1, size.width * 0.59, size.height * 0.09);
    path.cubicTo(size.width * 0.59, size.height * 0.09, size.width * 0.59, size.height * 0.08, size.width * 0.59, size.height * 0.07);
    path.cubicTo(size.width * 0.59, size.height * 0.07, size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.06);
    path.cubicTo(size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.57, size.height * 0.06, size.width * 0.57, size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.56, size.height * 0.06, size.width * 0.56, size.height * 0.06);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.45, size.height * 0.1, size.width * 0.45, size.height * 0.1);
    path.cubicTo(size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.08);
    path.cubicTo(size.width * 0.44, size.height * 0.07, size.width * 0.44, size.height * 0.07, size.width * 0.43, size.height * 0.07);
    path.cubicTo(size.width * 0.43, size.height * 0.07, size.width * 0.42, size.height * 0.07, size.width * 0.42, size.height * 0.07);
    path.cubicTo(size.width * 0.41, size.height * 0.08, size.width * 0.41, size.height * 0.08, size.width * 0.41, size.height * 0.09);
    path.cubicTo(size.width * 0.41, size.height * 0.09, size.width * 0.38, size.height / 4, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.38, size.height * 0.26, size.width * 0.37, size.height * 0.27, size.width * 0.36, size.height * 0.28);
    path.cubicTo(size.width * 0.36, size.height * 0.28, size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29);
    path.cubicTo(size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29);
    path.cubicTo(size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.31, size.width * 0.36, size.height * 0.31);
    path.cubicTo(size.width * 0.36, size.height * 0.31, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.45, size.height * 0.42, size.width * 0.45, size.height * 0.42);
    path.cubicTo(size.width * 0.45, size.height * 0.41, size.width * 0.46, size.height * 0.41, size.width * 0.47, size.height * 0.41);
    path.cubicTo(size.width * 0.49, size.height * 0.41, size.width / 2, size.height * 0.4, size.width * 0.52, size.height * 0.38);
    path.cubicTo(size.width * 0.52, size.height * 0.38, size.width * 0.57, size.height / 3, size.width * 0.57, size.height / 3);
    path.cubicTo(size.width * 0.57, size.height / 3, size.width * 0.58, size.height * 0.32, size.width * 0.58, size.height * 0.31);
    path.cubicTo(size.width * 0.58, size.height * 0.31, size.width * 0.58, size.height * 0.3, size.width * 0.58, size.height * 0.29);
    path.cubicTo(size.width * 0.58, size.height * 0.29, size.width * 0.58, size.height * 0.29, size.width * 0.58, size.height * 0.29);
    canvas.drawPath(path, paint);

    // Path number 47

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.45, size.height * 0.42, size.width * 0.45, size.height * 0.42);
    path.cubicTo(size.width * 0.45, size.height * 0.42, size.width * 0.46, size.height * 0.42, size.width * 0.47, size.height * 0.41);
    path.cubicTo(size.width * 0.49, size.height * 0.41, size.width / 2, size.height * 0.4, size.width * 0.52, size.height * 0.39);
    path.cubicTo(size.width * 0.52, size.height * 0.39, size.width * 0.57, size.height / 3, size.width * 0.57, size.height / 3);
    path.cubicTo(size.width * 0.58, size.height / 3, size.width * 0.58, size.height * 0.32, size.width * 0.58, size.height * 0.32);
    path.cubicTo(size.width * 0.58, size.height * 0.31, size.width * 0.58, size.height * 0.3, size.width * 0.58, size.height * 0.29);
    path.cubicTo(size.width * 0.58, size.height * 0.29, size.width * 0.58, size.height * 0.28, size.width * 0.57, size.height * 0.28);
    path.cubicTo(size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.27);
    path.cubicTo(size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27);
    path.cubicTo(size.width * 0.57, size.height * 0.27, size.width * 0.57, size.height * 0.26, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.57, size.height / 4, size.width * 0.57, size.height * 0.24, size.width * 0.57, size.height * 0.23);
    path.cubicTo(size.width * 0.57, size.height * 0.23, size.width * 0.56, size.height * 0.22, size.width * 0.56, size.height * 0.22);
    path.cubicTo(size.width * 0.56, size.height * 0.22, size.width * 0.56, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.56, size.height / 5, size.width * 0.56, size.height / 5, size.width * 0.56, size.height * 0.19);
    path.cubicTo(size.width * 0.56, size.height * 0.19, size.width * 0.56, size.height * 0.18, size.width * 0.56, size.height * 0.17);
    path.cubicTo(size.width * 0.56, size.height * 0.17, size.width * 0.55, size.height * 0.16, size.width * 0.55, size.height * 0.16);
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.55, size.height * 0.16, size.width * 0.54, size.height * 0.16);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.58, size.height * 0.11, size.width * 0.58, size.height * 0.11);
    path.cubicTo(size.width * 0.59, size.height * 0.11, size.width * 0.59, size.height * 0.1, size.width * 0.59, size.height * 0.1);
    path.cubicTo(size.width * 0.59, size.height * 0.09, size.width * 0.59, size.height * 0.08, size.width * 0.59, size.height * 0.07);
    path.cubicTo(size.width * 0.59, size.height * 0.07, size.width * 0.59, size.height * 0.06, size.width * 0.58, size.height * 0.06);
    path.cubicTo(size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.05);
    path.cubicTo(size.width * 0.57, size.height * 0.05, size.width * 0.57, size.height * 0.05, size.width * 0.57, size.height * 0.05);
    path.cubicTo(size.width * 0.56, size.height * 0.05, size.width * 0.56, size.height * 0.06, size.width * 0.56, size.height * 0.06);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.45, size.height * 0.17, size.width * 0.45, size.height * 0.17);
    path.cubicTo(size.width * 0.45, size.height * 0.17, size.width * 0.45, size.height * 0.1, size.width * 0.45, size.height * 0.1);
    path.cubicTo(size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.08, size.width * 0.45, size.height * 0.08);
    path.cubicTo(size.width * 0.44, size.height * 0.07, size.width * 0.44, size.height * 0.07, size.width * 0.43, size.height * 0.06);
    path.cubicTo(size.width * 0.43, size.height * 0.06, size.width * 0.42, size.height * 0.06, size.width * 0.41, size.height * 0.07);
    path.cubicTo(size.width * 0.41, size.height * 0.07, size.width * 0.41, size.height * 0.08, size.width * 0.4, size.height * 0.09);
    path.cubicTo(size.width * 0.4, size.height * 0.09, size.width * 0.38, size.height / 4, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.38, size.height * 0.26, size.width * 0.37, size.height * 0.27, size.width * 0.36, size.height * 0.28);
    path.cubicTo(size.width * 0.36, size.height * 0.28, size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29);
    path.cubicTo(size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.29);
    path.cubicTo(size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.31, size.width * 0.35, size.height * 0.31, size.width * 0.35, size.height * 0.31);
    path.cubicTo(size.width * 0.35, size.height * 0.31, size.width * 0.41, size.height * 0.44, size.width * 0.41, size.height * 0.44);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.lineTo(size.width * 0.46, size.height * 0.41);
    path.cubicTo(size.width * 0.46, size.height * 0.41, size.width * 0.45, size.height * 0.41, size.width * 0.44, size.height * 0.42);
    path.cubicTo(size.width * 0.44, size.height * 0.42, size.width * 0.43, size.height * 0.43, size.width * 0.43, size.height * 0.43);
    path.cubicTo(size.width * 0.43, size.height * 0.43, size.width * 0.43, size.height * 0.43, size.width * 0.43, size.height * 0.43);
    path.cubicTo(size.width * 0.43, size.height * 0.43, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.43, size.width * 0.36, size.height * 0.31, size.width * 0.36, size.height * 0.31);
    path.cubicTo(size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3);
    path.cubicTo(size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3);
    path.cubicTo(size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3);
    path.cubicTo(size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29);
    path.cubicTo(size.width * 0.36, size.height * 0.29, size.width * 0.37, size.height * 0.29, size.width * 0.37, size.height * 0.29);
    path.cubicTo(size.width * 0.37, size.height * 0.28, size.width * 0.38, size.height * 0.26, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.38, size.height / 4, size.width * 0.41, size.height * 0.09, size.width * 0.41, size.height * 0.09);
    path.cubicTo(size.width * 0.41, size.height * 0.09, size.width * 0.41, size.height * 0.08, size.width * 0.42, size.height * 0.08);
    path.cubicTo(size.width * 0.42, size.height * 0.07, size.width * 0.43, size.height * 0.07, size.width * 0.43, size.height * 0.07);
    path.cubicTo(size.width * 0.44, size.height * 0.07, size.width * 0.44, size.height * 0.08, size.width * 0.44, size.height * 0.08);
    path.cubicTo(size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.1);
    path.cubicTo(size.width * 0.45, size.height * 0.1, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.56, size.height * 0.07, size.width * 0.56, size.height * 0.07);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.56, size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.57, size.height * 0.06, size.width * 0.57, size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.07);
    path.cubicTo(size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.08);
    path.cubicTo(size.width * 0.59, size.height * 0.08, size.width * 0.59, size.height * 0.09, size.width * 0.59, size.height * 0.09);
    path.cubicTo(size.width * 0.58, size.height * 0.1, size.width * 0.58, size.height * 0.1, size.width * 0.58, size.height * 0.11);
    path.cubicTo(size.width * 0.58, size.height * 0.11, size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16);
    path.cubicTo(size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16);
    path.cubicTo(size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17);
    path.cubicTo(size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17);
    path.cubicTo(size.width * 0.52, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.17);
    path.cubicTo(size.width * 0.54, size.height * 0.17, size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.17);
    path.cubicTo(size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.18);
    path.cubicTo(size.width * 0.55, size.height * 0.18, size.width * 0.56, size.height * 0.19, size.width * 0.55, size.height * 0.19);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.55, size.height / 5, size.width * 0.55, size.height / 5);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.53, size.height * 0.22, size.width * 0.53, size.height * 0.22, size.width * 0.53, size.height * 0.22);
    path.cubicTo(size.width * 0.53, size.height * 0.23, size.width * 0.53, size.height * 0.23, size.width * 0.53, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.23, size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.23);
    path.cubicTo(size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.24);
    path.cubicTo(size.width * 0.57, size.height * 0.24, size.width * 0.57, size.height / 4, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.56, size.height * 0.26, size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27);
    path.cubicTo(size.width * 0.56, size.height * 0.27, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.54, size.height * 0.28, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.28, size.width * 0.56, size.height * 0.28);
    path.cubicTo(size.width * 0.56, size.height * 0.28, size.width * 0.56, size.height * 0.28, size.width * 0.56, size.height * 0.28);
    path.cubicTo(size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.29);
    path.cubicTo(size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.3);
    path.cubicTo(size.width * 0.58, size.height * 0.3, size.width * 0.58, size.height * 0.31, size.width * 0.58, size.height * 0.31);
    path.cubicTo(size.width * 0.57, size.height * 0.32, size.width * 0.57, size.height * 0.32, size.width * 0.57, size.height / 3);
    path.cubicTo(size.width * 0.57, size.height / 3, size.width * 0.52, size.height * 0.38, size.width * 0.52, size.height * 0.38);
    path.cubicTo(size.width / 2, size.height * 0.4, size.width * 0.48, size.height * 0.4, size.width * 0.47, size.height * 0.41);
    path.cubicTo(size.width * 0.47, size.height * 0.41, size.width * 0.47, size.height * 0.41, size.width * 0.46, size.height * 0.41);
    path.cubicTo(size.width * 0.46, size.height * 0.41, size.width * 0.46, size.height * 0.41, size.width * 0.46, size.height * 0.41);
    canvas.drawPath(path, paint);

    // Path number 48

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.53, size.height * 0.3);
    path.cubicTo(size.width * 0.53, size.height * 0.3, size.width * 0.54, size.height * 0.3, size.width * 0.54, size.height * 0.3);
    path.cubicTo(size.width * 0.54, size.height * 0.3, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.53, size.height * 0.29, size.width * 0.53, size.height * 0.29);
    path.cubicTo(size.width * 0.53, size.height * 0.29, size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3);
    path.cubicTo(size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3);
    path.cubicTo(size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3);
    path.cubicTo(size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3);
    path.cubicTo(size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3, size.width * 0.53, size.height * 0.3);
    canvas.drawPath(path, paint);

    // Path number 49

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.54, size.height * 0.22, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    path.cubicTo(size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24, size.width * 0.52, size.height * 0.24);
    canvas.drawPath(path, paint);

    // Path number 50

    paint.color = Color(0xff861b77);
    path = Path();
    path.lineTo(size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16, size.width * 0.53, size.height * 0.16);
    path.cubicTo(size.width * 0.53, size.height * 0.16, size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16);
    path.cubicTo(size.width * 0.52, size.height * 0.16, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    path.cubicTo(size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18, size.width * 0.51, size.height * 0.18);
    canvas.drawPath(path, paint);

    // Path number 51

    paint.color = Color(0xff24022b);
    path = Path();
    path.lineTo(size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.45, size.height * 0.42, size.width * 0.45, size.height * 0.42);
    path.cubicTo(size.width * 0.45, size.height * 0.42, size.width * 0.46, size.height * 0.42, size.width * 0.47, size.height * 0.41);
    path.cubicTo(size.width * 0.49, size.height * 0.41, size.width / 2, size.height * 0.4, size.width * 0.52, size.height * 0.39);
    path.cubicTo(size.width * 0.52, size.height * 0.39, size.width * 0.57, size.height / 3, size.width * 0.57, size.height / 3);
    path.cubicTo(size.width * 0.58, size.height / 3, size.width * 0.58, size.height * 0.32, size.width * 0.58, size.height * 0.32);
    path.cubicTo(size.width * 0.58, size.height * 0.31, size.width * 0.58, size.height * 0.3, size.width * 0.58, size.height * 0.29);
    path.cubicTo(size.width * 0.58, size.height * 0.29, size.width * 0.58, size.height * 0.28, size.width * 0.57, size.height * 0.28);
    path.cubicTo(size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.27);
    path.cubicTo(size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27);
    path.cubicTo(size.width * 0.57, size.height * 0.27, size.width * 0.57, size.height * 0.26, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.57, size.height / 4, size.width * 0.57, size.height * 0.24, size.width * 0.57, size.height * 0.23);
    path.cubicTo(size.width * 0.57, size.height * 0.23, size.width * 0.56, size.height * 0.22, size.width * 0.56, size.height * 0.22);
    path.cubicTo(size.width * 0.56, size.height * 0.22, size.width * 0.56, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.56, size.height / 5, size.width * 0.56, size.height / 5, size.width * 0.56, size.height * 0.19);
    path.cubicTo(size.width * 0.56, size.height * 0.19, size.width * 0.56, size.height * 0.18, size.width * 0.56, size.height * 0.17);
    path.cubicTo(size.width * 0.56, size.height * 0.17, size.width * 0.55, size.height * 0.16, size.width * 0.55, size.height * 0.16);
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.55, size.height * 0.16, size.width * 0.54, size.height * 0.16);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.58, size.height * 0.11, size.width * 0.58, size.height * 0.11);
    path.cubicTo(size.width * 0.59, size.height * 0.11, size.width * 0.59, size.height * 0.1, size.width * 0.59, size.height * 0.1);
    path.cubicTo(size.width * 0.59, size.height * 0.09, size.width * 0.59, size.height * 0.08, size.width * 0.59, size.height * 0.07);
    path.cubicTo(size.width * 0.59, size.height * 0.07, size.width * 0.59, size.height * 0.06, size.width * 0.58, size.height * 0.06);
    path.cubicTo(size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.05);
    path.cubicTo(size.width * 0.57, size.height * 0.05, size.width * 0.57, size.height * 0.05, size.width * 0.57, size.height * 0.05);
    path.cubicTo(size.width * 0.56, size.height * 0.05, size.width * 0.56, size.height * 0.06, size.width * 0.56, size.height * 0.06);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.45, size.height * 0.17, size.width * 0.45, size.height * 0.17);
    path.cubicTo(size.width * 0.45, size.height * 0.17, size.width * 0.45, size.height * 0.1, size.width * 0.45, size.height * 0.1);
    path.cubicTo(size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.08, size.width * 0.45, size.height * 0.08);
    path.cubicTo(size.width * 0.44, size.height * 0.07, size.width * 0.44, size.height * 0.07, size.width * 0.43, size.height * 0.06);
    path.cubicTo(size.width * 0.43, size.height * 0.06, size.width * 0.42, size.height * 0.06, size.width * 0.41, size.height * 0.07);
    path.cubicTo(size.width * 0.41, size.height * 0.07, size.width * 0.41, size.height * 0.08, size.width * 0.4, size.height * 0.09);
    path.cubicTo(size.width * 0.4, size.height * 0.09, size.width * 0.38, size.height / 4, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.38, size.height * 0.26, size.width * 0.37, size.height * 0.27, size.width * 0.36, size.height * 0.28);
    path.cubicTo(size.width * 0.36, size.height * 0.28, size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29);
    path.cubicTo(size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.29);
    path.cubicTo(size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.29, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3, size.width * 0.35, size.height * 0.3);
    path.cubicTo(size.width * 0.35, size.height * 0.31, size.width * 0.35, size.height * 0.31, size.width * 0.35, size.height * 0.31);
    path.cubicTo(size.width * 0.35, size.height * 0.31, size.width * 0.41, size.height * 0.44, size.width * 0.41, size.height * 0.44);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44);
    path.cubicTo(size.width * 0.42, size.height * 0.44, size.width * 0.42, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.cubicTo(size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44, size.width * 0.43, size.height * 0.44);
    path.lineTo(size.width * 0.46, size.height * 0.41);
    path.cubicTo(size.width * 0.46, size.height * 0.41, size.width * 0.45, size.height * 0.41, size.width * 0.44, size.height * 0.42);
    path.cubicTo(size.width * 0.44, size.height * 0.42, size.width * 0.43, size.height * 0.43, size.width * 0.43, size.height * 0.43);
    path.cubicTo(size.width * 0.43, size.height * 0.43, size.width * 0.43, size.height * 0.43, size.width * 0.43, size.height * 0.43);
    path.cubicTo(size.width * 0.43, size.height * 0.43, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43, size.width * 0.42, size.height * 0.43);
    path.cubicTo(size.width * 0.42, size.height * 0.43, size.width * 0.36, size.height * 0.31, size.width * 0.36, size.height * 0.31);
    path.cubicTo(size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3);
    path.cubicTo(size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3);
    path.cubicTo(size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3, size.width * 0.36, size.height * 0.3);
    path.cubicTo(size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29, size.width * 0.36, size.height * 0.29);
    path.cubicTo(size.width * 0.36, size.height * 0.29, size.width * 0.37, size.height * 0.29, size.width * 0.37, size.height * 0.29);
    path.cubicTo(size.width * 0.37, size.height * 0.28, size.width * 0.38, size.height * 0.26, size.width * 0.38, size.height / 4);
    path.cubicTo(size.width * 0.38, size.height / 4, size.width * 0.41, size.height * 0.09, size.width * 0.41, size.height * 0.09);
    path.cubicTo(size.width * 0.41, size.height * 0.09, size.width * 0.41, size.height * 0.08, size.width * 0.42, size.height * 0.08);
    path.cubicTo(size.width * 0.42, size.height * 0.07, size.width * 0.43, size.height * 0.07, size.width * 0.43, size.height * 0.07);
    path.cubicTo(size.width * 0.44, size.height * 0.07, size.width * 0.44, size.height * 0.08, size.width * 0.44, size.height * 0.08);
    path.cubicTo(size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.09, size.width * 0.45, size.height * 0.1);
    path.cubicTo(size.width * 0.45, size.height * 0.1, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18, size.width * 0.44, size.height * 0.18);
    path.cubicTo(size.width * 0.44, size.height * 0.18, size.width * 0.56, size.height * 0.07, size.width * 0.56, size.height * 0.07);
    path.cubicTo(size.width * 0.56, size.height * 0.06, size.width * 0.56, size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.57, size.height * 0.06, size.width * 0.57, size.height * 0.06, size.width * 0.57, size.height * 0.06);
    path.cubicTo(size.width * 0.58, size.height * 0.06, size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.07);
    path.cubicTo(size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.07, size.width * 0.58, size.height * 0.08);
    path.cubicTo(size.width * 0.59, size.height * 0.08, size.width * 0.59, size.height * 0.09, size.width * 0.59, size.height * 0.09);
    path.cubicTo(size.width * 0.58, size.height * 0.1, size.width * 0.58, size.height * 0.1, size.width * 0.58, size.height * 0.11);
    path.cubicTo(size.width * 0.58, size.height * 0.11, size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16);
    path.cubicTo(size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16, size.width * 0.52, size.height * 0.16);
    path.cubicTo(size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17);
    path.cubicTo(size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17, size.width * 0.52, size.height * 0.17);
    path.cubicTo(size.width * 0.52, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17, size.width * 0.53, size.height * 0.17);
    path.cubicTo(size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.16, size.width * 0.54, size.height * 0.17);
    path.cubicTo(size.width * 0.54, size.height * 0.17, size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.17);
    path.cubicTo(size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.17, size.width * 0.55, size.height * 0.18);
    path.cubicTo(size.width * 0.55, size.height * 0.18, size.width * 0.56, size.height * 0.19, size.width * 0.55, size.height * 0.19);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.55, size.height / 5, size.width * 0.55, size.height / 5);
    path.cubicTo(size.width * 0.55, size.height / 5, size.width * 0.54, size.height * 0.22, size.width * 0.54, size.height * 0.22);
    path.cubicTo(size.width * 0.53, size.height * 0.22, size.width * 0.53, size.height * 0.22, size.width * 0.53, size.height * 0.22);
    path.cubicTo(size.width * 0.53, size.height * 0.23, size.width * 0.53, size.height * 0.23, size.width * 0.53, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23);
    path.cubicTo(size.width * 0.54, size.height * 0.23, size.width * 0.54, size.height * 0.23, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22, size.width * 0.55, size.height * 0.22);
    path.cubicTo(size.width * 0.55, size.height * 0.23, size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.23);
    path.cubicTo(size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.23, size.width * 0.56, size.height * 0.24);
    path.cubicTo(size.width * 0.57, size.height * 0.24, size.width * 0.57, size.height / 4, size.width * 0.57, size.height / 4);
    path.cubicTo(size.width * 0.56, size.height * 0.26, size.width * 0.56, size.height * 0.27, size.width * 0.56, size.height * 0.27);
    path.cubicTo(size.width * 0.56, size.height * 0.27, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28, size.width * 0.55, size.height * 0.28);
    path.cubicTo(size.width * 0.54, size.height * 0.28, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.29);
    path.cubicTo(size.width * 0.55, size.height * 0.29, size.width * 0.55, size.height * 0.28, size.width * 0.56, size.height * 0.28);
    path.cubicTo(size.width * 0.56, size.height * 0.28, size.width * 0.56, size.height * 0.28, size.width * 0.56, size.height * 0.28);
    path.cubicTo(size.width * 0.57, size.height * 0.28, size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.29);
    path.cubicTo(size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.29, size.width * 0.57, size.height * 0.3);
    path.cubicTo(size.width * 0.58, size.height * 0.3, size.width * 0.58, size.height * 0.31, size.width * 0.58, size.height * 0.31);
    path.cubicTo(size.width * 0.57, size.height * 0.32, size.width * 0.57, size.height * 0.32, size.width * 0.57, size.height / 3);
    path.cubicTo(size.width * 0.57, size.height / 3, size.width * 0.52, size.height * 0.38, size.width * 0.52, size.height * 0.38);
    path.cubicTo(size.width / 2, size.height * 0.4, size.width * 0.48, size.height * 0.4, size.width * 0.47, size.height * 0.41);
    path.cubicTo(size.width * 0.47, size.height * 0.41, size.width * 0.47, size.height * 0.41, size.width * 0.46, size.height * 0.41);
    path.cubicTo(size.width * 0.46, size.height * 0.41, size.width * 0.46, size.height * 0.41, size.width * 0.46, size.height * 0.41);
    canvas.drawPath(path, paint);
  }
}
