part of 'final_data_bloc.dart';

@freezed
class FinalDataEvent with _$FinalDataEvent {
  const factory FinalDataEvent.chageGasLevel(double? value) = _ChangeGasLevel;
}
