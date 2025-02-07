import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_picker_state.dart';
part 'date_picker_cubit.freezed.dart';

class DatePickerCubit extends Cubit<DatePickerState> {
  DatePickerCubit() : super(const DatePickerState.initial());
  DateTime selectedDate = DateTime.now();
  int selectedButton = 0;

  void initSelectedDate() {
    emit(DatePickerState.dateSelected(selectedDate,selectedButton));
  }

  void setDate(DateTime date, {int? index}) {
    selectedDate = date;
    selectedButton = index!;
    emit(DatePickerState.dateSelected(date,selectedButton));
  }

  DateTime getNextWeekday(int weekday) {
    DateTime date = DateTime.now();
    while (date.weekday != weekday) {
      date = date.add(Duration(days: 1));
    }
    return date;
  }

}
