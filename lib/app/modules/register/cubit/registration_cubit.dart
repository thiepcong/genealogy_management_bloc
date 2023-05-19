import 'package:flutter_bloc/flutter_bloc.dart';

import 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit(super.initialState);

  void setPhone(String phone) {
    emit(state.copyWith(phone: phone));
  }

  void setConfirmCode(String confirmCode) {
    emit(state.copyWith(confirmCode: confirmCode));
  }

  void setName(String name) {
    emit(state.copyWith(name: name));
  }

  void setGender(String gender) {
    emit(state.copyWith(gender: gender));
  }

  void setBirthday(String birthday) {
    emit(state.copyWith(birthday: birthday));
  }
}
