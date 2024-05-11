import 'dart:typed_data';

import '../dto/create_category_dto.dart';

abstract class ICreateCategoryRepository {
  Future<bool> createCategory(CreateCategoryDto params);
  Future<String> uploadImage(Uint8List imagebytes, String slug);
}
