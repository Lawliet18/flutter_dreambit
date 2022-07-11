import 'dart:io';

import 'package:flutter_dreambit/task_1/constants.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

class CompressService {
  static Future<File?> compressAndGetFile(String imagePath) async {
    Directory directory = await getApplicationDocumentsDirectory();

    return FlutterImageCompress.compressAndGetFile(
      imagePath,
      '${directory.path}/image.png',
      quality: Constants.imageQualityInPercent,
      format: CompressFormat.jpeg,
    );
  }
}
