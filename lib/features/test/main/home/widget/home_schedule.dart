import 'package:dalemy_ex/features/test/main/home/widget/home_padding_text.dart';
import 'package:flutter/material.dart';

class HomeSchedule extends StatelessWidget {
  final String scheduleText;
  final String helpServiceText;
  const HomeSchedule({
    super.key,
    required this.scheduleText,
    required this.helpServiceText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 28,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '${DateTime.now().month}월 ${DateTime.now().day}일 ${DateTime.now().weekday}요일',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const Icon(Icons.person, color: Colors.black),
            ],
          ),
          HomePaddingText(text: scheduleText),
          const Text(
            '이용 예정 도우미 서비스',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          HomePaddingText(text: helpServiceText),
        ],
      ),
    );
  }
}
