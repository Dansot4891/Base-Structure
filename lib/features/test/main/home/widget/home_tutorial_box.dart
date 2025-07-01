import 'package:flutter/material.dart';

class HomeTutorialBox extends StatelessWidget {
  const HomeTutorialBox({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 40, bottom: 80),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.purple,
                ),
                SizedBox(width: 12),
                Text(
                  '딸내미 앱 사용법 보러가기',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
