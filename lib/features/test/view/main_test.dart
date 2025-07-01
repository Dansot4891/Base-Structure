import 'package:dalemy_ex/app/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootTab extends StatefulWidget {
  final Widget child;
  const RootTab(this.child, {super.key});

  @override
  State<RootTab> createState() => _RootTabState();
}

class _RootTabState extends State<RootTab> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          // 구분선
          Container(height: 1, color: Colors.grey[300]),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              onTap: onTap,
              backgroundColor: Colors.grey.shade100,
              selectedItemColor: Colors.purple,
              unselectedItemColor: Colors.grey,
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.calendar_today), label: '내 일정'),
                BottomNavigationBarItem(
                    icon: SizedBox(), label: ''), // 중앙 버튼 공간
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard), label: '앱보드'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'MY'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GestureDetector(
              onTap: () {
                print('대화');
              },
              child: Container(
                width: 74,
                height: 74,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple,
                  border: Border.all(color: Colors.white, width: 6),
                ),
                margin: const EdgeInsets.only(bottom: 40),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 0),
                    Icon(Icons.chat, color: Colors.white),
                    Text('대화', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });

    switch (currentIndex) {
      case 0:
        context.go(AppRoute.home.path);
        break;
      case 1:
        context.go(AppRoute.schedule.path);
        break;
      case 2:
        context.go(AppRoute.board.path);
        break;
      case 3:
        context.go(AppRoute.mypage.path);
        break;
      default:
        break;
    }
  }
}
