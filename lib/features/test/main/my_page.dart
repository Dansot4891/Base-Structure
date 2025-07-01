import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('MyPage');
    return const Scaffold(
      body: Center(
        child: Text('MyPage'),
      ),
    );
  }
}
