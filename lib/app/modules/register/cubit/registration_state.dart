import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const RegistrationState._();
  const factory RegistrationState({
    @Default('') String phone,
    @Default(false) bool phonePass,
    @Default('') String confirmCode,
    @Default(false) bool confirmCodePass,
    @Default('') String name,
    @Default('') String gender,
    @Default('') String birthday,
    @Default(false) bool showHomePage,
    Object? error,
  }) = _RegistrationState;

  bool get enableShowConfirmPage => phone.isNotEmpty;
  bool get enableShowHomePage => confirmCode.isNotEmpty;
  bool get enablePassLogin => name.isNotEmpty && gender.isNotEmpty;
}
