import 'dart:typed_data';

import 'package:reconcavo_orders/core/design_system/utils.dart';

import '../../../../../injector.dart';
import '../atoms/create_category_atom.dart';
import '../dto/create_category_dto.dart';
import '../repositories/i_create_category_repository.dart';

Future<void> setImageBytes(Uint8List? imagebytes) async {
  createCategoryState.value = createCategoryState.value.copyWith(imagebytes: imagebytes);
}

Future<void> setCategoryName(String name) async {
  final slug = removeDiacritics(name).replaceAll(' ', '-');
  createCategoryState.value = createCategoryState.value.copyWith(name: name, slug: slug);
}

Future<void> setCategoryDescription(String description) async {
  createCategoryState.value = createCategoryState.value.copyWith(description: description);
}

Future<void> createCategory(CreateCategoryDto params) async {
  createCategoryResultLoaging.value = true;
  final repository = injector.get<ICreateCategoryRepository>();
  createCategoryResultState.value = await repository.createCategory(params);
  createCategoryResultLoaging.value = false;
}
