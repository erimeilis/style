import '../../../style.dart';

class AppCardSms extends StatefulWidget {
  const AppCardSms({Key? key, required this.text, required this.date, required this.inbound, this.tail = false}) : super(key: key);

  final String text;
  final String date;
  final bool inbound;
  final bool tail;

  @override
  _AppCardSmsState createState() => _AppCardSmsState();
}

class _AppCardSmsState extends State<AppCardSms> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return Row(children: <Widget>[
      widget.inbound
          ? Container()
          : const Expanded(
              child: SizedBox(
                width: 5,
              ),
            ),
      Container(
          //color: Colors.transparent,
          constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .35),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              child: Container(
                  decoration: BoxDecoration(
                    color: widget.inbound ? theme.colors.icons : theme.colors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(theme.spacing.small8),
                      topRight: Radius.circular(theme.spacing.small8),
                      bottomLeft: Radius.circular(widget.tail
                          ? widget.inbound
                              ? 0
                              : theme.spacing.small8
                          : theme.spacing.small8),
                      bottomRight: Radius.circular(widget.tail
                          ? widget.inbound
                              ? theme.spacing.small8
                              : 0
                          : theme.spacing.small8),
                    ),
                  ),
                  child: Stack(children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(theme.spacing.regular15),
                        child: Stack(children: [
                          Padding(
                              padding: widget.inbound
                                  ? EdgeInsets.only(left: theme.spacing.small8, right: theme.spacing.regular18, bottom: theme.spacing.regular15)
                                  : EdgeInsets.only(left: theme.spacing.small8, right: theme.spacing.small8, bottom: theme.spacing.regular15),
                              child: AppText.p18(textAlign: TextAlign.left, widget.text, color: theme.colors.white)),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: AppText.p18(
                                textAlign: TextAlign.right,
                                widget.date,
                                color: theme.colors.white,
                                fontSize: 12,
                              ))
                        ]))
                  ]))))
    ]);

    //if use iOS style
    return Align(
      alignment: widget.inbound ? Alignment.topLeft : Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: CustomPaint(
          painter: IosChatBubble(
              color: widget.inbound ? theme.colors.icons : theme.colors.dark,
              alignment: widget.inbound ? Alignment.topLeft : Alignment.topRight,
              tail: widget.tail),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * .35,
            ),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(theme.spacing.regular15),
                  child: Stack(children: [
                    Padding(
                        padding: widget.inbound
                            ? EdgeInsets.only(left: theme.spacing.small8, right: theme.spacing.regular18, bottom: theme.spacing.regular15)
                            : EdgeInsets.only(left: theme.spacing.small8, right: theme.spacing.small8, bottom: theme.spacing.regular15),
                        child: AppText.p18(textAlign: TextAlign.left, widget.text, color: theme.colors.white)),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: AppText.p18(
                          textAlign: TextAlign.right,
                          widget.date,
                          color: theme.colors.white,
                          fontSize: 12,
                        ))
                  ]),
                ),
                const SizedBox(
                  width: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IosChatBubble extends CustomPainter {
  final Color color;
  final Alignment alignment;
  final bool tail;

  IosChatBubble({
    required this.color,
    required this.alignment,
    required this.tail,
  });

  final double _radius = 10.0;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var h = size.height;
    var w = size.width;
    if (alignment == Alignment.topRight) {
      if (tail) {
        var path = Path();

        /// starting point
        path.moveTo(_radius * 2, 0);

        /// top-left corner
        path.quadraticBezierTo(0, 0, 0, _radius * 1.5);

        /// left line
        path.lineTo(0, h - _radius * 1.5);

        /// bottom-left corner
        path.quadraticBezierTo(0, h, _radius * 2, h);

        /// bottom line
        path.lineTo(w - _radius * 3, h);

        /// bottom-right bubble curve
        path.quadraticBezierTo(w - _radius * 1.5, h, w - _radius * 1.5, h - _radius * 0.6);

        /// bottom-right tail curve 1
        path.quadraticBezierTo(w - _radius * 1, h, w, h);

        /// bottom-right tail curve 2
        path.quadraticBezierTo(w - _radius * 0.8, h, w - _radius, h - _radius * 1.5);

        /// right line
        path.lineTo(w - _radius, _radius * 1.5);

        /// top-right curve
        path.quadraticBezierTo(w - _radius, 0, w - _radius * 3, 0);

        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        var path = Path();

        /// starting point
        path.moveTo(_radius * 2, 0);

        /// top-left corner
        path.quadraticBezierTo(0, 0, 0, _radius * 1.5);

        /// left line
        path.lineTo(0, h - _radius * 1.5);

        /// bottom-left corner
        path.quadraticBezierTo(0, h, _radius * 2, h);

        /// bottom line
        path.lineTo(w - _radius * 3, h);

        /// bottom-right curve
        path.quadraticBezierTo(w - _radius, h, w - _radius, h - _radius * 1.5);

        /// right line
        path.lineTo(w - _radius, _radius * 1.5);

        /// top-right curve
        path.quadraticBezierTo(w - _radius, 0, w - _radius * 3, 0);

        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    } else {
      if (tail) {
        var path = Path();

        /// starting point
        path.moveTo(_radius * 3, 0);

        /// top-left corner
        path.quadraticBezierTo(_radius, 0, _radius, _radius * 1.5);

        /// left line
        path.lineTo(_radius, h - _radius * 1.5);
        // bottom-right tail curve 1
        path.quadraticBezierTo(_radius * .8, h, 0, h);

        /// bottom-right tail curve 2
        path.quadraticBezierTo(_radius * 1, h, _radius * 1.5, h - _radius * 0.6);

        /// bottom-left bubble curve
        path.quadraticBezierTo(_radius * 1.5, h, _radius * 3, h);

        /// bottom line
        path.lineTo(w - _radius * 2, h);

        /// bottom-right curve
        path.quadraticBezierTo(w, h, w, h - _radius * 1.5);

        /// right line
        path.lineTo(w, _radius * 1.5);

        /// top-right curve
        path.quadraticBezierTo(w, 0, w - _radius * 2, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      } else {
        var path = Path();

        /// starting point
        path.moveTo(_radius * 3, 0);

        /// top-left corner
        path.quadraticBezierTo(_radius, 0, _radius, _radius * 1.5);

        /// left line
        path.lineTo(_radius, h - _radius * 1.5);

        /// bottom-left curve
        path.quadraticBezierTo(_radius, h, _radius * 3, h);

        /// bottom line
        path.lineTo(w - _radius * 2, h);

        /// bottom-right curve
        path.quadraticBezierTo(w, h, w, h - _radius * 1.5);

        /// right line
        path.lineTo(w, _radius * 1.5);

        /// top-right curve
        path.quadraticBezierTo(w, 0, w - _radius * 2, 0);
        canvas.clipPath(path);
        canvas.drawRRect(
            RRect.fromLTRBR(0, 0, w, h, Radius.zero),
            Paint()
              ..color = color
              ..style = PaintingStyle.fill);
      }
    }
  }
}
