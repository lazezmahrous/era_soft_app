import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:t_shirt/core/di/dependency_injection.dart';
import 'package:t_shirt/core/global%20widgets/app_loading.dart';
import 'package:t_shirt/features/get_product_data/data/logic/get_latest_product_cubit.dart';

import '../../../home/ui/widgets/item_info_widget.dart';
import '../../data/logic/pay/pay_cubit.dart';

class GetLatestProductScreen extends StatefulWidget {
  const GetLatestProductScreen({super.key});

  @override
  State<GetLatestProductScreen> createState() => _GetLatestProductScreenState();
}

class _GetLatestProductScreenState extends State<GetLatestProductScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetLatestProductCubit, GetLatestProductState>(
      builder: (context, state) {
        return state.when(
          initial: () {
            return SliverToBoxAdapter(child: Container());
          },
          loading: () {
            return const SliverToBoxAdapter(child: AppLoading());
          },
          success: (success) {
            return SliverGrid.builder(
              itemCount: success.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: .7,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: ItemInfoWidget(
                    productData: success[index],
                  ),
                );
              },
            );
          },
          failure: (errMessage) {
            return SliverToBoxAdapter(
              child: Text(errMessage),
            );
          },
        );
      },
    );
  }
}
