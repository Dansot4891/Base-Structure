import 'package:dalemy_ex/app/route/routes.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: SizedBox(
        height: 120,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomNavigationBar(
                // TODO: 스타일 상세 설정
                type: BottomNavigationBarType.fixed,
                onTap: onTap,
                backgroundColor: Colors.grey.shade100,
                selectedItemColor: Colors.purple,
                unselectedItemColor: Colors.grey,
                currentIndex: currentIndex,
                items: const [
                  // TODO: 아이콘 할당 및 텍스트 수정
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.calendar_today), label: '내 일정'),
                  BottomNavigationBarItem(
                      icon: SizedBox(), label: ''), // 중앙 버튼 공간
                  BottomNavigationBarItem(
                      icon: Icon(Icons.dashboard), label: '앱보드'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person), label: 'MY'),
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
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });

    switch (currentIndex) {
      case 0:
        navigate(context, route: AppRoute.home);
        break;
      case 1:
        navigate(context, route: AppRoute.schedule);
        break;
      // 가운데는 커스텀으로 제작하여 제외
      case 3:
        navigate(context, route: AppRoute.board);
        break;
      case 4:
        navigate(context, route: AppRoute.mypage);
        break;
      default:
        break;
    }
  }
}
