import 'package:supabase_flutter/supabase_flutter.dart';

import '../models/make_order/order_model.dart';

class MakeOrderRepo {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<void> makeOrder({required OrderModel orderData}) async {
   await _supabase.from('orders').insert(orderData.toJson());
  }
}
