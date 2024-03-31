import 'dart:developer';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';

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
        return await image.readAsBytes();
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
        return await image.readAsBytes();
      }
      return null;
    } catch (e) {
      log("Erro ao selecionar imagem da galeria: $e");
      return null;
    }
  }
}
