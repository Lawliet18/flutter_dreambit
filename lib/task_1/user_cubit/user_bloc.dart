import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dreambit/task_1/services/compress_service.dart';
import 'package:flutter_dreambit/task_1/user_cubit/user_state.dart';
import 'package:flutter_dreambit/task_1/user_repository/i_user_repository.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this._userRepository) : super(UserState());

  final IUserRepository _userRepository;

  Future<void> updateAvatar(String imagePath, String userId) async {
    File? file = await CompressService.compressAndGetFile(imagePath);

    if (file != null) {
      await  _userRepository.updateUserAvatar(file, userId);
      // emit success state
    }

    // emit error state 
  }
}
