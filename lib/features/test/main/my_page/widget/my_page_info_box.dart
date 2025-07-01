import 'package:flutter/material.dart';

class MyPageInfoBox extends StatelessWidget {
  const MyPageInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('PLUS 요금제'),
                  Text('2025.06.01 ~ 2025.06.30'),
                ],
              ),
              Text('무료 이용중'),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('잔역 체력'),
              SizedBox(width: 12),
              Text('2,550'),
            ],
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text('5000'),
          ),
          const SizedBox(height: 4),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                width: MediaQuery.sizeOf(context).width - 80,
                height: 16,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                width: 100,
                height: 16,
              ),
            ],
          ),
          const SizedBox(height: 24),
          remainingRow(title: '찬여 추천서비스', value: '10회'),
          const SizedBox(height: 12),
          remainingRow(title: '찬여 와우이용권', value: '3개'),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 14.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Text(
              '와우이용권 추가 결제',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  remainingRow({
    required String title,
    required String value,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.purple,
          ),
        ),
      ],
    );
  }
}
