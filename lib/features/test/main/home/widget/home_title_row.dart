import 'package:flutter/material.dart';

class HomeTitleRow extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const HomeTitleRow({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          GestureDetector(
            onTap: onTap,
            child: const Row(
              children: [
                Text('전체보기'),
                Icon(Icons.arrow_forward_ios, size: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
