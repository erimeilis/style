import 'package:flutter/material.dart';

import '../app_datetime_picker.dart';
import 'variants/app_datetime_picker_variants/app_dtp_basic.dart';

class AppDateTimePicker extends StatelessWidget {
  const AppDateTimePicker(
      {super.key,
      this.initialDate,
      this.firstDate,
      this.lastDate,
      this.isShowSeconds,
      this.is24HourMode,
      this.minutesInterval,
      this.secondsInterval,
      this.borderRadius,
      this.constraints,
      required this.type,
      this.selectableDayPredicate});

  final DateTime? initialDate;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final bool? isShowSeconds;
  final bool? is24HourMode;
  final int? minutesInterval;
  final int? secondsInterval;
  final BorderRadiusGeometry? borderRadius;
  final BoxConstraints? constraints;
  final AppDateTimePickerType type;
  final bool Function(DateTime)? selectableDayPredicate;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      shape: Theme.of(context).useMaterial3
          ? null
          : borderRadius != null
              ? RoundedRectangleBorder(
                  borderRadius: borderRadius!,
                )
              : null,
      child: AppDtpBasic(
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        minutesInterval: minutesInterval,
        secondsInterval: secondsInterval,
        constraints: constraints,
        type: type,
        selectableDayPredicate: selectableDayPredicate,
      ),
    );
  }
}
