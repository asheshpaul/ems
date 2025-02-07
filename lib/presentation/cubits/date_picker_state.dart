part of 'date_picker_cubit.dart';

@freezed
class DatePickerState with _$DatePickerState {
  const factory DatePickerState.initial() = _Initial;

  const factory DatePickerState.dateSelected(DateTime date, int selectedButton) = _DateSelected;
}
