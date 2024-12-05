import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/product_request_body.dart';

class AddingProductRepo {
  final SupabaseClient _supabase = Supabase.instance.client;
  AddingProductRepo();
  Future<void> addingProduct({required ProductRequestBody product}) async {
    await _supabase.from('products').insert(product.toJson());
  }
}
