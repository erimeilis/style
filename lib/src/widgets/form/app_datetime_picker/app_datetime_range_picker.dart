import 'package:flutter/material.dart';

import '../../../../style.dart';
import 'variants/app_datetime_range_picker_variants/app_dtp_range.dart';

class AppDateTimeRangePicker extends StatelessWidget {
  const AppDateTimeRangePicker(
      {super.key,
      this.startInitialDate,
      this.startFirstDate,
      this.startLastDate,
      this.endInitialDate,
      this.endFirstDate,
      this.endLastDate,
      this.isShowSeconds,
      this.is24HourMode,
      this.minutesInterval,
      this.secondsInterval,
      this.borderRadius,
      this.constraints,
      required this.type,
      this.selectableDayPredicate});

  final DateTime? startInitialDate;
  final DateTime? startFirstDate;
  final DateTime? startLastDate;

  final DateTime? endInitialDate;
  final DateTime? endFirstDate;
  final DateTime? endLastDate;
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
    final theme = AppTheme.of(context);
    return Dialog(
        backgroundColor: Colors.transparent,
        alignment: Alignment.center,
        shape: borderRadius != null
            ? RoundedRectangleBorder(
                borderRadius: borderRadius!,
              )
            : null,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: AppContainer(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(begin: const Alignment(0, 0), end: const Alignment(0, 1), colors: [theme.colors.bgGradientStart, theme.colors.bgGradientEnd]),
          ),
          child: AppDtpRange(
            startInitialDate: startInitialDate,
            startFirstDate: startFirstDate,
            startLastDate: startLastDate,
            endInitialDate: endInitialDate,
            endFirstDate: endFirstDate,
            endLastDate: endLastDate,
            is24HourMode: is24HourMode,
            isShowSeconds: isShowSeconds,
            minutesInterval: minutesInterval,
            secondsInterval: secondsInterval,
            constraints: constraints,
            type: type,
            selectableDayPredicate: selectableDayPredicate,
          ),
        ));
  }
}
