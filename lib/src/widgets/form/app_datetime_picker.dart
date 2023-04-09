/// A DateTime picker to pick a single DateTime or a DateTime range.
///
/// Use [showAppDateTimePicker] to pick a single DateTime.
///
/// Use [showAppDateTimeRangePicker] to pick a DateTime range.
///
library omni_datetime_picker;

import 'package:flutter/material.dart';

import 'app_datetime_picker/app_datetime_picker.dart';
import 'app_datetime_picker/app_datetime_range_picker.dart';

/// Type of the [AppDateTimePicker]
/// default to dateAndTime if not selected
enum AppDateTimePickerType {
  date,
  dateAndTime,
}

/// Show dialog of the [AppDateTimePicker]
///
/// Returns a DateTime
///
Future<DateTime?> showAppDateTimePicker({
  required BuildContext context,
  DateTime? initialDate,
  DateTime? firstDate,
  DateTime? lastDate,
  bool? is24HourMode,
  bool? isShowSeconds,
  int? minutesInterval,
  int? secondsInterval,
  BorderRadiusGeometry? borderRadius,
  BoxConstraints? constraints,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transitionBuilder,
  Duration? transitionDuration,
  bool? barrierDismissible,
  AppDateTimePickerType type = AppDateTimePickerType.dateAndTime,
  final bool Function(DateTime)? selectableDayPredicate,
}) {
  return showGeneralDialog(
    context: context,
    transitionBuilder: transitionBuilder ??
        (context, anim1, anim2, child) {
          return FadeTransition(
            opacity: anim1.drive(
              Tween(
                begin: 0,
                end: 1,
              ),
            ),
            child: child,
          );
        },
    transitionDuration: transitionDuration ?? const Duration(milliseconds: 200),
    barrierDismissible: barrierDismissible ?? true,
    barrierLabel: 'AppDateTimePicker',
    pageBuilder: (BuildContext context, anim1, anim2) {
      return AppDateTimePicker(
        type: type,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        minutesInterval: minutesInterval,
        secondsInterval: secondsInterval,
        borderRadius: borderRadius,
        constraints: constraints,
        selectableDayPredicate: selectableDayPredicate,
      );
    },
  );
}

/// Show a dialog of the [AppDateTimePicker]
///
/// Returns a List<DateTime>
/// with index 0 as startDateTime
/// and index 1 as endDateTime
///
Future<List<DateTime>?> showAppDateTimeRangePicker({
  required BuildContext context,
  DateTime? startInitialDate,
  DateTime? startFirstDate,
  DateTime? startLastDate,
  DateTime? endInitialDate,
  DateTime? endFirstDate,
  DateTime? endLastDate,
  bool? is24HourMode,
  bool? isShowSeconds,
  int? minutesInterval,
  int? secondsInterval,
  BorderRadiusGeometry? borderRadius,
  BoxConstraints? constraints,
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transitionBuilder,
  Duration? transitionDuration,
  bool? barrierDismissible,
  AppDateTimePickerType type = AppDateTimePickerType.dateAndTime,
  bool Function(DateTime)? selectableDayPredicate,
}) {
  return showGeneralDialog(
    context: context,
    transitionBuilder: transitionBuilder ??
        (context, anim1, anim2, child) {
          return FadeTransition(
            opacity: anim1.drive(
              Tween(
                begin: 0,
                end: 1,
              ),
            ),
            child: child,
          );
        },
    transitionDuration: transitionDuration ?? const Duration(milliseconds: 200),
    barrierDismissible: barrierDismissible ?? true,
    barrierLabel: 'AppDateTimeRangePicker',
    pageBuilder: (BuildContext context, anim1, anim2) {
      return AppDateTimeRangePicker(
        type: type,
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        endInitialDate: endInitialDate,
        endFirstDate: endFirstDate,
        endLastDate: endLastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        borderRadius: borderRadius,
        constraints: constraints,
        selectableDayPredicate: selectableDayPredicate,
      );
    },
  );
}
