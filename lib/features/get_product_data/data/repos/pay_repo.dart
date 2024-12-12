import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:t_shirt/features/get_product_data/data/models/pay/pay_user_data.dart';

class PayRepo {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<Map<String, dynamic>> pay({
    required PayUserData userData,
    required ProductData productData,
  }) async {
    final response = await _supabase.rpc(
      'decrement_jsonb_count',
      params: {
        'table_name': 'products',
        'id_value': productData.id,
        'size_key': productData.size,
        'color_key': productData.color,
        'decrement_value': productData.count,
      },
    );
    return response as Map<String, dynamic>;
  }

  Future<PayUserData> getUserInfo() async {
    final String userEmail = _supabase.auth.currentUser!.email!;
    Map<String, dynamic>? data;
    await _supabase
        .from('users')
        .select('*')
        .eq('email', userEmail)
        .single()
        .then((userData) {
      data = userData;
    });
    return PayUserData.fromJson(data!);
  }
}

class ProductData {
  final String size;
  final String color;
  final int id;
  final int count;

  ProductData({
    required this.size,
    required this.color,
    required this.id,
    required this.count,
  });
}
