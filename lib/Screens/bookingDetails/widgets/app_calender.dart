import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

enum CalendarOption { year, month, week, day }

class AppCalender extends StatefulWidget {
  const AppCalender({super.key});

  @override
  State<AppCalender> createState() => _AppCalenderState();
}

class _AppCalenderState extends State<AppCalender> {
  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      onSelectionChanged: _onSelectedChanged,
      selectionMode: DateRangePickerSelectionMode.range,
      initialSelectedRange: PickerDateRange(
          DateTime.now().subtract(const Duration(days: 5)),
          DateTime.now().add(const Duration(days: 5))),
    );
  }

  void _onSelectedChanged(DateRangePickerSelectionChangedArgs args) {
    print(args.value);
  }
}

class CalendarOptionsSegmentedButton extends StatefulWidget {
  const CalendarOptionsSegmentedButton({super.key});

  @override
  State<CalendarOptionsSegmentedButton> createState() =>
      _CalendarOptionsSegmentedButtonState();
}

class _CalendarOptionsSegmentedButtonState
    extends State<CalendarOptionsSegmentedButton> {

  CalendarOption selected = CalendarOption.month;
   
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<CalendarOption>(
      segments: const <ButtonSegment<CalendarOption>>[
        ButtonSegment<CalendarOption>(
            value: CalendarOption.year, label: Text('Year')),
        ButtonSegment<CalendarOption>(
            value: CalendarOption.month, label: Text('Month')),
        ButtonSegment<CalendarOption>(
            value: CalendarOption.week, label: Text('Week')),
        ButtonSegment<CalendarOption>(
            value: CalendarOption.day, label: Text('Day')),
      ],
      selected: <CalendarOption>{selected},
    );
  }
}
