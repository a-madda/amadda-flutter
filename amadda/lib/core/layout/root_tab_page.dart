import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootTabPage extends StatelessWidget {
  final Widget child;
  const RootTabPage({super.key, required this.child});

  static const tabs = ['/home', '/search', '/chat', '/reservation', '/mypage'];

  int _locationToIndex(String location) {
    return tabs.indexWhere((path) => location.startsWith(path));
  }

  @override
  Widget build(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    final currentIndex = _locationToIndex(location);

    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex == -1 ? 0 : currentIndex,
        onTap: (index) => context.go(tabs[index]),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: '검색'),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '예약내역',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '마이페이지'),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
