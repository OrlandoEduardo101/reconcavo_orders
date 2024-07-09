import 'package:image_compression_flutter/image_compression_flutter.dart';

Future<ImageFile> handleCompressImage(ImageFile image) async {
  Configuration config = const Configuration();
  final param = ImageFileConfiguration(input: image, config: config);
  final output = await compressor.compress(param);

  return output;
}

Future<ImageFile> compressToLess50mb(ImageFile image) async {
  ImageFile output = image;
  while (image.sizeInBytes > 49000000) {
    output = await handleCompressImage(output);
  }

  return output;
}
