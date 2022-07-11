abstract class CompressedMedia {
  String getCompressedMedia();
}

abstract class CompressedVideo implements CompressedMedia {
  Duration getDuration();
}

abstract class MediaModel {
  final String id;
  final DateTime createdAt;
  final String path;

  MediaModel({
    required this.id,
    required this.createdAt,
    required this.path,
  });
}

class VideoModel extends MediaModel implements CompressedVideo {
  VideoModel({
    required String id,
    required DateTime createdAt,
    required String path,
  }) : super(id: id, createdAt: createdAt, path: path);

  @override
  String getCompressedMedia() {
    return 'Compressed Video from $path';
  }

  @override
  Duration getDuration() => const Duration(seconds: 2);
}

class ImageModel extends MediaModel implements CompressedMedia {
  ImageModel({
    required String id,
    required DateTime createdAt,
    required String path,
  }) : super(id: id, createdAt: createdAt, path: path);

  @override
  String getCompressedMedia() {
    return 'Compressed Image from $path';
  }
}
