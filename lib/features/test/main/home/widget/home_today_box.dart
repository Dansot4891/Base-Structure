import 'package:flutter/material.dart';

class HomeTodayBox extends StatelessWidget {
  final String content;
  final String buttonText;
  final VoidCallback onTap;
  final Color buttonColor;
  const HomeTodayBox({
    super.key,
    required this.content,
    required this.buttonText,
    required this.onTap,
    this.buttonColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.heat_pump_sharp, color: Colors.black),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: buttonColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(buttonText, style: const TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
