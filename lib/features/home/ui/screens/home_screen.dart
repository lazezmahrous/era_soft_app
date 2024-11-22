import 'package:flutter/material.dart';
import 'package:t_shirt/core/helpers/extensions.dart';
import 'package:t_shirt/core/networking/supabase/repos/supabase_auth_service.dart';
import 'package:t_shirt/core/routing/routers.dart';
import 'package:t_shirt/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () async {
              await SupabaseAuthService().signOut();
              context.pushNamedAndRemoveUntil(
                Routes.signupScreen,
                predicate: (route) => false,
              );
            },
            icon: const Icon(Icons.login),
          ),
        ],
        title: const Text('HomeScreen'),
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
