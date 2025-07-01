import 'package:flutter/material.dart';

class MyPageTopRow extends StatelessWidget {
  final VoidCallback onTap;
  const MyPageTopRow({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('마이페이지'),
        InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Text('딸내미 앱 사용법'),
          ),
        )
      ],
    );
  }
}
