import 'dart:developer';
import 'dart:typed_data';

import 'package:reconcavo_orders/app/administrative_dashboard/modules/stock/interactor/dto/create_category_dto.dart';
import 'package:reconcavo_orders/app/administrative_dashboard/modules/stock/interactor/repositories/i_create_category_repository.dart';

import '../../../../../core/services/remote_storage/remote_storage_client.dart';

class CreateCategoryRepository implements ICreateCategoryRepository {
  final IRemoteStorageClient remoteStorageClient;

  CreateCategoryRepository(this.remoteStorageClient);

  @override
  Future<bool> createCategory(CreateCategoryDto params) async {
    try {
      if (params.imagebytes != null) {
        final imageUrl = await uploadImage(params.imagebytes!, params.slug);
        params = params.copyWith(imageUrl: imageUrl);
      }

      final response = await remoteStorageClient.add('categories', params.toMap());

      return true;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  @override
  Future<String> uploadImage(Uint8List imagebytes, String slug) async {
    try {
      
      final response = await remoteStorageClient.uploadFile('categories_image', slug, imagebytes);
      return response;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
