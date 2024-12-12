import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:t_shirt/features/get_product_data/data/models/get_product_response_body.dart';

class GetLatestProductsRepo {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<List<GetProductResponseBody>> getLatestProducts() async {
    final response = await _supabase
        .from('products')
        .select('*')
        .order('date_published', ascending: false)
        .limit(10);
    print('respnse $response');
    return (response)
        .map((item) => GetProductResponseBody.fromJson(item))
        .toList();
  }
}
