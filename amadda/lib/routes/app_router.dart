// lib/routes/app_router.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/layout/root_tab_page.dart';

import '../features/home/view/home_page.dart';
import '../features/search/view/search_page.dart';
import '../features/chat/view/chat_page.dart';
import '../features/reservation/view/reservation_page.dart';
import '../features/mypage/view/mypage.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/search',
    routes: [
      ShellRoute(
        builder: (context, state, child) => RootTabPage(child: child),
        routes: [
          GoRoute(path: '/home', builder: (context, state) => const HomePage()),
          GoRoute(
            path: '/search',
            builder: (context, state) => const SearchPage(),
          ),
          GoRoute(path: '/chat', builder: (context, state) => const ChatPage()),
          GoRoute(
            path: '/reservation',
            builder: (context, state) => const ReservationPage(),
          ),
          GoRoute(path: '/mypage', builder: (context, state) => const MyPage()),
        ],
      ),
    ],
  );
});
