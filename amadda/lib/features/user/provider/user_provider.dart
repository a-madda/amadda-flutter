import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/user_api_client_provider.dart';

final userAsyncProvider = FutureProvider.family<Map<String, dynamic>, int>((
  ref,
  userId,
) async {
  final apiClient = ref.read(userApiClientProvider);
  final userData = await apiClient.getUser(userId);
  return userData;
});
