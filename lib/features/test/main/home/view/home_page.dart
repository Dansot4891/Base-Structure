import 'package:dalemy_ex/features/test/main/home/widget/home_padding_text.dart';
import 'package:dalemy_ex/features/test/main/home/widget/home_title_row.dart';
import 'package:dalemy_ex/features/test/main/home/widget/home_schedule.dart';
import 'package:dalemy_ex/features/test/main/home/widget/home_today_box.dart';
import 'package:dalemy_ex/features/test/main/home/widget/home_tutorial_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // 뒤에 배경을 위한 Stack 활용
            Stack(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.30,
                  color: Colors.purple,
                ),
                const SafeArea(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '딸내미',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.notifications, color: Colors.white),
                          ],
                        ),
                        SizedBox(height: 32),
                        HomeSchedule(
                          scheduleText: '등록된 일정이 없어요',
                          helpServiceText: '이용 예정 도우미 서비스가 없어요',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  HomeTitleRow(onTap: () {}, title: '오늘의 와우'),
                  HomeTodayBox(
                    content:
                        'TodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayToday',
                    buttonText: '내 사진 와우 만들기',
                    buttonColor: Colors.purple,
                    onTap: () {},
                  ),
                  HomeTitleRow(onTap: () {}, title: '한 줄 일기장'),
                  HomeTodayBox(
                    content:
                        'TodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayToday',
                    buttonText: '내 사진 와우 만들기',
                    buttonColor: Colors.purple,
                    onTap: () {},
                  ),
                  HomeTitleRow(onTap: () {}, title: '나만의 메모장'),
                  HomeTodayBox(
                    content:
                        'TodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayTodayToday',
                    buttonText: '내 사진 와우 만들기',
                    buttonColor: Colors.purple,
                    onTap: () {},
                  ),
                  const HomeTutorialBox()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
