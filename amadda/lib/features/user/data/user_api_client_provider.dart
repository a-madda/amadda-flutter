import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/user_api_client.dart';

final userApiClientProvider = Provider<UserApiClient>((ref) {
  return UserApiClient();
});
