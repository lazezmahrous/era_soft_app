import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/product_request_body.dart';

class AddingProductRepo {
  final SupabaseClient _supabase = Supabase.instance.client;
  AddingProductRepo();
  Future<void> addingProduct({required ProductRequestBody product}) async {
    await _supabase.from('products').insert(product.toJson());
  }

  Future<String> uploadProductImage({required File file}) async {
    String filePath = await _supabase.storage
        .from('product_images/images')
        .upload(
          file.path,
          file,
          fileOptions: const FileOptions(cacheControl: '3600', upsert: false),
        );
    final String publicUrl =
        _supabase.storage.from('product_images/images').getPublicUrl(file.path);
    return publicUrl;
  }
}
