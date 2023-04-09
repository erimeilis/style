import 'package:flutter/material.dart';

import '../../../../../style.dart';

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key, required this.onSavePressed});

  final void Function() onSavePressed;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: AppTextLink(
            onTap: () {
              Navigator.of(context).pop<DateTime>();
            },
            title: localizations.cancelButtonLabel,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 20,
          child: VerticalDivider(),
        ),
        Expanded(
          child: AppTextLink(
            onTap: onSavePressed,
            title: localizations.saveButtonLabel,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
