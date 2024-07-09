import 'dart:developer';
import 'dart:typed_data';

import 'package:image_compression_flutter/image_compression_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'compress_image.dart';

abstract class IImagePickerService {
  Future<Uint8List?> pickImageFromCamera();
  Future<Uint8List?> pickImageFromGallery();
}

class ImagePickerService implements IImagePickerService {
  final ImagePicker _picker = ImagePicker();

  @override
  Future<Uint8List?> pickImageFromCamera() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.camera);
      if (image != null) {
        final asImageFile = await image.asImageFile;
        final imageCompress = await compressToLess50mb(asImageFile);
        return imageCompress.rawBytes;
      }
      return null;
    } catch (e) {
      log("Erro ao capturar imagem da câmera: $e");
      return null;
    }
  }

  @override
  Future<Uint8List?> pickImageFromGallery() async {
    try {
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        final asImageFile = await image.asImageFile;
        final imageCompress = await compressToLess50mb(asImageFile);
        return imageCompress.rawBytes;
      }
      return null;
    } catch (e) {
      log("Erro ao selecionar imagem da galeria: $e");
      return null;
    }
  }
}
