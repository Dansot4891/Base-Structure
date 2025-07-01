import 'package:flutter/material.dart';

class MyPageSubBox extends StatelessWidget {
  final VoidCallback inviteTap;
  final VoidCallback questionTap;
  final VoidCallback warRoomTap;
  const MyPageSubBox({
    super.key,
    required this.inviteTap,
    required this.questionTap,
    required this.warRoomTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _innerBox(
            title: '전구 초대',
            icon: Icons.person,
            onTap: inviteTap,
            color: Colors.purple.shade100,
          ),
          _innerBox(
            title: '지주 묻는 질문',
            icon: Icons.chat_bubble,
            onTap: questionTap,
            color: Colors.pink.shade100,
          ),
          _innerBox(
            title: '와우 자료실',
            icon: Icons.inventory,
            onTap: warRoomTap,
            color: Colors.blue.shade100,
          ),
        ],
      ),
    );
  }

  _innerBox({
    required String title,
    required IconData icon,
    required VoidCallback onTap,
    required Color color,
  }) {
    return GestureDetector(
      onTap: warRoomTap,
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(
              icon,
              color: Colors.blue,
              size: 24,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '와우 자료실',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
