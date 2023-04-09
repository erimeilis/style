import '../../../style.dart';

class AppCardSms extends StatefulWidget {
  const AppCardSms({
    Key? key,
    required this.text,
    required this.date,
    required this.inbound,
  }) : super(key: key);

  final String text;
  final String date;
  final bool inbound;

  @override
  _AppCardSmsState createState() => _AppCardSmsState();
}

class _AppCardSmsState extends State<AppCardSms> {
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Expanded(
          child: AppContainer(
              alignment: Alignment.centerLeft,
              padding: const AppEdgeInsets.regular18(),
              margin: const AppEdgeInsets.small8(),
              decoration: BoxDecoration(
                borderRadius: theme.radius.asBorderRadius().small,
                color: widget.inbound ? theme.colors.icons : theme.colors.dark,
              ),
              child: Column(children: [
                AppText.p18(widget.text, color: theme.colors.white),
                AppContainer(
                    alignment: Alignment.bottomRight,
                    child: AppText.p18(
                      widget.date,
                      color: theme.colors.white,
                      fontSize: 12,
                    ))
              ]))),
      Container(width: theme.spacing.big25)
    ]);
  }
}
