import 'package:bank_mf/shared/theme.dart';
import 'package:flutter/material.dart';

class ProfileMenuitem extends StatelessWidget {
  final String iconUrl;
  final String title;
  final VoidCallback? onTap;

  const ProfileMenuitem({
    super.key,
    required this.iconUrl,
    required this.title,
    this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        children: [
          Image.asset(
            iconUrl,
            width: 24,
          ),
          const SizedBox(
            width: 18,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}