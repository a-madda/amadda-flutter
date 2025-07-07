import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../core/layout/root_tab_page.dart';

import '../features/home/view/home_page.dart';
import '../features/search/view/search_page.dart';
import '../features/chat/view/chat_page.dart';
import '../features/reservation/view/reservation_page.dart';
import '../features/mypage/view/mypage.dart';
import '../features/user/view/user_page.dart';

class Routes {
  static const home = '/home';
  static const search = '/search';
  static const chat = '/chat';
  static const reservation = '/reservation';
  static const mypage = '/mypage';
  static const user = '/user';
}

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.search, // 시작 경로
    routes: [
      ShellRoute(
        builder: (context, state, child) => RootTabPage(child: child),
        routes: [
          GoRoute(
            path: Routes.home,
            name: 'home',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: Routes.search,
            name: 'search',
            builder: (context, state) => const SearchPage(),
          ),
          GoRoute(
            path: Routes.chat,
            name: 'chat',
            builder: (context, state) => const ChatPage(),
          ),
          GoRoute(
            path: Routes.reservation,
            name: 'reservation',
            builder: (context, state) => const ReservationPage(),
          ),
          GoRoute(
            path: Routes.mypage,
            name: 'mypage',
            builder: (context, state) => const MyPage(),
          ),
          GoRoute(
            path: Routes.user,
            name: 'user',
            builder:
                (context, state) => const UserPage(userId: 1), // userId 1로 테스트
          ),
        ],
      ),
    ],
  );
});
