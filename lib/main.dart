import 'package:flutter_dreambit/task_1/user_cubit/user_bloc.dart';
import 'package:flutter_dreambit/task_1/user_repository/user_repository.dart';
import 'package:flutter_dreambit/task_3/compressed_media.dart';

void main() {
  UserCubit cubit = UserCubit(UserRepository());
  VideoModel videoModel = VideoModel(id: '1', createdAt: DateTime.now(), path: '/');
  ImageModel imageModel = ImageModel(id: '1', createdAt: DateTime.now(), path: '/');

  videoModel.getDuration();
  videoModel.getCompressedMedia();

  imageModel.getCompressedMedia();
}
