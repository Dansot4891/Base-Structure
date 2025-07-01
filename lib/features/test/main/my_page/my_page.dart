import 'package:dalemy_ex/features/test/main/my_page/widget/my_page_info_box.dart';
import 'package:dalemy_ex/features/test/main/my_page/widget/my_page_sub_box.dart';
import 'package:dalemy_ex/features/test/main/my_page/widget/my_page_top_row.dart';
import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            MyPageTopRow(
              onTap: () {},
            ),
            const SizedBox(height: 24),
            const MyPageInfoBox(),
            MyPageSubBox(
              inviteTap: () {},
              questionTap: () {},
              warRoomTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
