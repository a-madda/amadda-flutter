import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../user/provider/user_provider.dart';

class UserPage extends ConsumerWidget {
  final int userId;

  const UserPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userAsyncProvider(userId));

    return Scaffold(
      appBar: AppBar(title: const Text('유저 페이지')),
      body: userAsyncValue.when(
        data:
            (user) => Padding(
              padding: const EdgeInsets.all(16),
              child: Text('User Info:\n${user.toString()}'),
            ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
